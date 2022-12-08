<?php

namespace App\Repository;

use App\Classe\Search;
use App\Entity\Recipe;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Recipe>
 *
 * @method Recipe|null find($id, $lockMode = null, $lockVersion = null)
 * @method Recipe|null findOneBy(array $criteria, array $orderBy = null)
 * @method Recipe[]    findAll()
 * @method Recipe[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class RecipeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Recipe::class);
    }

    /**
     * Requète qui permet de récupérer les produits en fonction de la recherche de l'utilisateur
     * @return Recipe[]
     */
    public function findWithSearch (Search $search)
    {
        $queryDiet = $this
            ->createQueryBuilder('r')
            ->select('d', 'r')
            ->join('r.diets', 'd');

        $queryAllergen = $this
        ->createQueryBuilder('r')
        ->select('a', 'r')
        ->join('r.allergens', 'a'); 
        
        if(!empty($search->diets)) {
            $query = $queryDiet 
                ->andWhere('d.id IN (:diets)')
                ->setParameter('diets', $search->diets);
        }  

        if(!empty( $search->allergens)) {
            $query = $queryAllergen
                ->orWhere('a.id IN (:allergens)')
                ->setParameter('allergens', $search->allergens);
        }  

        if (!empty($search->string)) {
            $query = $queryAllergen 
                ->orWhere('r.title LIKE :string') 
                ->setParameter('string', "%{$search->string}%");
        }
        
        return $query->getQuery()->getResult();
    }

    public function add(Recipe $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Recipe $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

//    /**
//     * @return Recipe[] Returns an array of Recipe objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('r')
//            ->andWhere('r.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('r.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Recipe
//    {
//        return $this->createQueryBuilder('r')
//            ->andWhere('r.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
