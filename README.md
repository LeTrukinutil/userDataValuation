# Valorisation des Données Clients

## Description du Projet
Ce projet a été développé dans le cadre d'un hackathon de 4 jours pendant ma formation BTS SIO (pour un peu moins de 20h de travail dont 15h en cours). L'objectif était de créer une plateforme permettant aux commerciaux d'accéder et de valoriser les données clients en mobilité.

## Fonctionnalités Principales
- Recherche d'une entreprise Française
- Import de données clients depuis fichiers CSV
- Base de données structurée pour le stockage des informations
- Enrichissement des données via API externes (https://api.gouv.fr)
- Visualisation simple et efficace des données clients

## Technologies Utilisées
- Backend: Laravel PHP
- Frontend: Laravel Blade, Tailwind CSS
- Base de données: MySql
- API externes intégrées

## Prérequis

### Environnement de Développement (versions utilisées)
- PHP >= 8.2.12
- Composer >= 2.7.9
- Node.js >= 21.4.0
- NPM >= 10.2.4
- Laravel >= 11.37.0

### Serveur
- Serveur web Apache/Nginx

### Base de données (versions utilisées)
- MariaDB >= 10.4.32
- Un utilisateur avec droits d'administration


## Installation
1. Cloner le repository
```bash
git clone [https://github.com/LeTrukinutil/userDataValuation.git]
```
2. Installez les dépendances PHP
```bash
composer install
```

3. Installez les dépendances front-end
```bash
npm install
```

4. Configurez l'environnement
```bash
# Créer le fichier .env
cp .env.example .env

# Générer la clé d'application
php artisan key:generate
```

5. Configurez la base de données dans .env
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=nom_de_la_base
DB_USERNAME=utilisateur
DB_PASSWORD=mot_de_passe
```

6. Initialisez la base de données en exécutant le script SQL `scriptBddBusinessLookup.sql` situé à la racine du projet. Bien que cette méthode ne soit pas optimale, elle est suffisante pour une version initiale (v1) afin de gagner du temps et de simplifier le processus.

7. Compilez les assets
```bash
# Mode développement
npm run dev
```

```bash
# Mode production
npm run prod
```

8. Démarrez l'application
```bash
php artisan serve
```

9. Accédez à l'application via http://localhost:8000


## Améliorations Futures Possibles
- Migration et seeding de la base de données avec les commandes artisan de Laravel pour améliorer et professionnaliser l'installation (au lieu d'utiliser un script SQL)
- Historique des recherches et entreprises consultées
- Système de favoris (entreprises) pour faciliter l'accès aux clients d'un commercial 
- Système de notifications pour les mises à jour importantes
- Export de rapports personnalisés
- Système de tags et catégorisation avancée pour pouvoir filter une recherche par taille d'entreprise par exemple 

## Contact
Amine Derbel - derbel.amine.49@gmail.com