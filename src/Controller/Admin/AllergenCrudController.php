<?php

namespace App\Controller\Admin;

use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use App\Entity\Allergen;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class AllergenCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Allergen::class;
    }

    public function configureCrud( Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInPlural('Allergènes')
            ->setEntityLabelInSingular('Allergène')
            ->setPageTitle( "index", "Type d'allergène");
    }

    /*
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id'),
            TextField::new('title'),
            TextEditorField::new('description'),
        ];
    }
    */
}
