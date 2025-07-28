# rails-macos-setup.sh

Script d'installation automatisée d'un environnement Ruby on Rails sur macOS.

## Description

Ce script configure un environnement Ruby on Rails prêt à l'emploi sur macOS : installation de Git, Homebrew, RVM, Ruby 3.2.2, Rails, Heroku CLI, et configuration SSH/GitHub. Idéal pour initier rapidement un setup de développement Rails.

## Prérequis

- macOS
- Connexion Internet active

## Installation

1. Clonez ce dépôt ou copiez le script dans un fichier `rails-macos-setup.sh`.
2. Rendez-le exécutable :

   ```bash
   chmod +x rails-macos-setup.sh
   ```

3. Lancez le script :

   ```bash
   ./rails-macos-setup.sh
   ```

## Ce que fait le script

- Installe Xcode Command Line Tools
- Installe Homebrew
- Installe Git via Homebrew
- Installe RVM (Ruby Version Manager)
- Installe Ruby 3.2.2 et la définit comme version par défaut
- Installe Rails via RubyGems
- Configure Git (nom, email, couleurs)
- Génère une clé SSH et l'ajoute à l'agent SSH
- Installe l'interface en ligne de commande Heroku
- Ajoute la clé SSH au compte Heroku

## Post-installation

Copiez la clé publique SSH générée et ajoutez-la à votre compte GitHub :

```bash
cat ~/.ssh/id_rsa.pub
```

## Auteurs

Script conçu et rédigé par Jérôme Pointreau

## Licence

Ce script est distribué sous licence GPL-3.0-only. Voir `LICENSE` pour plus d'informations.
