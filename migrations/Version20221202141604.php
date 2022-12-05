<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20221202141604 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE allergen_recipe (allergen_id INT NOT NULL, recipe_id INT NOT NULL, INDEX IDX_56B1F0C66E775A4A (allergen_id), INDEX IDX_56B1F0C659D8A214 (recipe_id), PRIMARY KEY(allergen_id, recipe_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE diet_recipe (diet_id INT NOT NULL, recipe_id INT NOT NULL, INDEX IDX_2641A9A7E1E13ACE (diet_id), INDEX IDX_2641A9A759D8A214 (recipe_id), PRIMARY KEY(diet_id, recipe_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE allergen_recipe ADD CONSTRAINT FK_56B1F0C66E775A4A FOREIGN KEY (allergen_id) REFERENCES allergen (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE allergen_recipe ADD CONSTRAINT FK_56B1F0C659D8A214 FOREIGN KEY (recipe_id) REFERENCES recipe (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE diet_recipe ADD CONSTRAINT FK_2641A9A7E1E13ACE FOREIGN KEY (diet_id) REFERENCES diet (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE diet_recipe ADD CONSTRAINT FK_2641A9A759D8A214 FOREIGN KEY (recipe_id) REFERENCES recipe (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE user_recipe DROP FOREIGN KEY FK_BFDAAA0AA76ED395');
        $this->addSql('ALTER TABLE user_recipe DROP FOREIGN KEY FK_BFDAAA0A59D8A214');
        $this->addSql('DROP TABLE user_recipe');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE user_recipe (user_id INT NOT NULL, recipe_id INT NOT NULL, INDEX IDX_BFDAAA0AA76ED395 (user_id), INDEX IDX_BFDAAA0A59D8A214 (recipe_id), PRIMARY KEY(user_id, recipe_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE user_recipe ADD CONSTRAINT FK_BFDAAA0AA76ED395 FOREIGN KEY (user_id) REFERENCES user (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE user_recipe ADD CONSTRAINT FK_BFDAAA0A59D8A214 FOREIGN KEY (recipe_id) REFERENCES recipe (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE allergen_recipe DROP FOREIGN KEY FK_56B1F0C66E775A4A');
        $this->addSql('ALTER TABLE allergen_recipe DROP FOREIGN KEY FK_56B1F0C659D8A214');
        $this->addSql('ALTER TABLE diet_recipe DROP FOREIGN KEY FK_2641A9A7E1E13ACE');
        $this->addSql('ALTER TABLE diet_recipe DROP FOREIGN KEY FK_2641A9A759D8A214');
        $this->addSql('DROP TABLE allergen_recipe');
        $this->addSql('DROP TABLE diet_recipe');
    }
}
