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

## Installation
1. Cloner le repository
```bash
git clone [url-du-repo]
```

2. Installer les dépendances
```bash
npm install
```

3. Configurer la base de données
- Importer le fichier de backup fourni dans le dossier `database`

4. Configurer les variables d'environnement
```bash
cp .env.example .env
# Modifier les variables dans .env
```

5. Lancer l'application
```bash
npm start
```

## Améliorations Futures Possibles
- Automatisation de l'import CSV avec un système de watch folder
- Historique des recherches et entreprises consultées 
- Système de notifications pour les mises à jour importantes
- Export de rapports personnalisés
- Système de tags et catégorisation avancée pour pouvoir filter une recherche par taille d'entreprise par exemple 

## Contact
Amine Derbel - derbel.amine.49@gmail.com