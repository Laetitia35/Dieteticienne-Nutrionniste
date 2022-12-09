<?php

namespace App\Controller;

use App\Entity\Recipe;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PatientRecipesController extends AbstractController
{

    #[Route('/patient-recettes', name: 'app_patient_recipes')]
    public function index(): Response
    {
        
            $recipes = $this->entityManager->getRepository(Recipe::class)->findAll();
            $user = $this->entityManager->getRepository(User::class)->findAll();

        return $this->render('patient_recipes/index.html.twig', [
            'recipes' => $recipes,
            'user' => $user,

        ]);
    }
}
