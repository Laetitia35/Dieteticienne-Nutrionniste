<?php

namespace App\Form;

use App\Service\PasswordGenerator;
use App\Entity\Allergen;
use App\Entity\Diet;
use App\Entity\Recipe;
use App\Entity\User;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\IsTrue;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;

class RegisterAdminType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder

            ->add('firstname', TextType::class, [
                'label' =>'Prenom :',
                #'constraint' => new Length([
                    #'min' => 2,
                    #'max' => 30,
                #]),
                'attr' =>[
                    'placeholder' => 'Merci de saisir le prenom du patient'
                ]
            ])

            ->add ('lastname',  TextType::class, [
                'label' =>'Nom :',
                #'constraint' => new Length([
                #    'min' => 2,
                #    'max' => 30,
                #]),
                'attr' =>[
                    'placeholder' => 'Merci de saisir le nom du patient'
                ]
            ])

            ->add('email',   EmailType::class, [
                'label' =>'Email :',
                #'constraint' => new Length ([
                    #'min' => 2,
                    #'max' => 60,
                #]),
                'attr' =>[
                    'placeholder' => "Merci de saisir l'adresse email du patient"
                ]
            ])

            ->add('password', RepeatedType::class, [
                'type' => PasswordType::class, 
                'invalid_message' =>'Le mot de passe et la confirmation doivent être identique',
                'label' => 'Insérer le mot de passe générer',
                'required' => true,
                'first_options' => [
                    'label' =>'Mot de passe générer :',
                    'attr' => [
                        'placeholder' => 'Merci de copier/coller le mot de passe sécurisé générer aléatoirement ci dessous.'
                    ]
                ],
                'second_options' => [
                    'label' => 'Confirmer le mot de passe générer aléatoirement :',
                    'attr' => [
                        'placeholder' => 'Merci de confirmer la saisie du mot de passe sécurisé générer aléatoirement.'
                    ]
                    
                ]
            ])

            ->add('diets', EntityType::class, [
                'class' => Diet:: class,
                'choice_label' =>'Type',
                'label' => 'Types de Régimes : ',
                'multiple' => true,
                'query_builder' => function(EntityRepository $repository) {
                    return $repository->createQueryBuilder('d')
                      ->orderBy('d.Type', 'ASC');
                    }, 'attr' => [
                       'class' => 'form-select'
                    ],
                    'expanded' => true,  
            ])

            ->add('allergens',EntityType::class, [
                'class' => Allergen:: class,
                'choice_label' =>'Type',
                'label' => 'Types Allergies : ',
                'multiple' => true,
                'query_builder' => function(EntityRepository $repository) {
                    return $repository->createQueryBuilder('a')
                      ->orderBy('a.Type', 'ASC');
                    }, 'attr' => [
                       'class' => 'form-select'
                    ],
                    'expanded' => true,  
            ])

            ->add('recipes',EntityType::class, [
                'class' => Recipe:: class,
                'choice_label' =>'title',
                'label' => 'Recettes personnalisées : ',
                'multiple' => true,
                'query_builder' => function(EntityRepository $repository) {
                    return $repository->createQueryBuilder('a')
                      ->orderBy('a.title', 'ASC');
                    }, 'attr' => [
                       'class' => 'form-select'
                    ],
                    'expanded' => true,  
            ])

            ->add('agreeTerms', CheckboxType::class, [
                'mapped' => false,
                'constraints' => [
                    new IsTrue([
                        'message' => "J'accepte de ne pas divulger les informations personnelles concernant mon utilisateur selon la RGPD.",
                    ]),
                ],
            ])

            ->add('submit', SubmitType::class, [
                'label' => "Valider l'inscription"
            ])
        
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
