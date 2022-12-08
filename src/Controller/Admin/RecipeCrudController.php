<?php

namespace App\Controller\Admin;

use App\Entity\Recipe;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\SlugField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;

class RecipeCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Recipe::class;
    }

    public function configureCrud( Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInPlural('Recettes')
            ->setEntityLabelInSingular('Recette')
            ->setPageTitle( "index", "Recettes");
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('title','Titre'),
            SlugField::new('slug')->setTargetFieldName('title'),
            TextField::new('Description'),
            IntegerField::new('Preparation_Time', 'Temps de préparation'),
            IntegerField::new('timeout', 'Temps de repos'),
            IntegerField::new('Cooking_Time', 'Temps de cuisson'),
            TextEditorField::new('Ingredients'),
            TextEditorField::new('Stage', 'Etape de réalisation'),
            ImageField::new('illustration', 'Image')
            ->setBasePath('images/')
            ->setUploadDir('public/images/')
            ->setUploadedFileNamePattern('[randomhash].[extension]')
            ->setRequired(false),
            AssociationField::new('diets', 'Régimes'),
            AssociationField::new('allergens', 'Allergènes'),
            AssociationField::new('users', 'Utilisateurs'),
        ];
    }
    
}
    
