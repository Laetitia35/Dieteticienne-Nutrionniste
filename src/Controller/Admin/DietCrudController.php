<?php

namespace App\Controller\Admin;

use App\Entity\Diet;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class DietCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Diet::class;
    }

    public function configureCrud( Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInPlural('Régimes')
            ->setEntityLabelInSingular('Régime')
            ->setPageTitle( "index", "Type de régime");
    }
    
   /* public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('Type'),

        ];
    }*/
    
}
