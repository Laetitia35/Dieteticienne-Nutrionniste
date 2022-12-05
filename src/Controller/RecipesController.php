<?php

namespace App\Controller;

use App\Classe\Search;
use App\Entity\Recipe;
use App\Form\SearchType;
use App\Repository\RecipeRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class RecipesController extends AbstractController
{
    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager) 
    {
        $this->entityManager = $entityManager;
    }

    
    #[Route('/recettes', name: 'app_recipes')]
    public function index(Request $request, EntityManagerInterface $entityManager): Response
    {
        
        $search = new search();
        $form = $this->createForm(SearchType::class, $search);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
        
            $recipes = $this->entityManager->getRepository(Recipe::class)->findWithSearch($search);

            $entityManager->persist($recipes);
            $entityManager->flush();

        } else {
            
            $recipes = $this->entityManager->getRepository(Recipe::class)->findAll();
        }

        return $this->render('recipes/index.html.twig', [
            'recipes' => $recipes,
            'form' => $form->createView()
        ]);
    }

    #[Route('/recette/{slug}', name: 'app_recipe/{slug}')]
    public function show($slug): Response
    {
        $recipe = $this->entityManager->getRepository(Recipe::class)-> findOneBy(['slug' => $slug]);

        if (!$recipe) {
            return $this->redirectToRoute('app_recipes');
       }

        return $this->render('recipes/show.html.twig', [
            'recipe' => $recipe,
            
        ]);
    }
}
