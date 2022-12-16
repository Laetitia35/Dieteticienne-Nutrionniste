<?php

namespace App\Controller\Admin;

use App\Entity\Allergen;
use App\Entity\Diet;
use App\Entity\Recipe;
use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
        return $this->render('admin/index.html.twig');
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Sandrine Coupart - Administration')
            ->renderContentMaximized();
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linkToDashboard("Panel d'administration", 'fa fa-home');
        yield MenuItem::linkToCrud('Utilisateur', 'fa-solid fa-user', User::class);
        yield MenuItem::linkToCrud('Recettes', 'fa-solid fa-utensils', Recipe::class);
        yield MenuItem::linkToCrud('Régime', 'fa-solid fa-carrot', Diet::class);
        yield MenuItem::linkToCrud('Allergène', "fa-solid fa-wheat-awn-circle-exclamation", Allergen::class);

    }
}
