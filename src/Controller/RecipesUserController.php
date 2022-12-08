<?php

namespace App\Controller;

use App\Classe\Search;
use App\Form\SearchType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class RecipesUserController extends AbstractController
{
    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager) 
    {
        $this->entityManager = $entityManager;
    }

    #[Route('/recettes-patients', name: 'app_recipes_user')]
    public function index(Request $request): Response
    {
        
        $search = new Search();
        $form = $this->createForm(SearchType::class, $search);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
        
            $recipes = $this->entityManager->getRepository(Recipe::class)->findWithSearch($search);

        } else {
            
            $recipes = $this->entityManager->getRepository(Recipe::class)->findAll();
        }

        return $this->render('recipes_user/index.html.twig', [
            'recipes' => $recipes,
            'form' => $form->createView()
        ]);
    }

    #[Route("/recette-patient/{slug}", name: 'app_recipe_user')]
    public function show($slug) : Response
    {
        $recipe = $this->entityManager->getRepository(Recipe::class)->findOneBy(['slug' => $slug]);
    
        if (!$recipe) {
            return $this->redirectToRoute('app_recipes');
        }
        return $this->render('recipes_user/show.html.twig', [
            'recipe' => $recipe,
        ]);

    }
}
