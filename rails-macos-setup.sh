#!/bin/zsh

read -p "Entrer votre nom d'utilisateur :" user
read -p "Envoyer votre e-mail sur GitHub :" email

# Installation Xcode Tool (Mac OS)... (!!!)
xcode-select --install

# Installer HomeBrew... (!!!)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Installer Git avec HomeBrew... (!!!)
brew install git

# Installer le gestionnaire RVM pour Ruby... (!!!)
curl -L get.rvm.io | bash -s stable

# Configurer RVM pour une utilisation avec HomeBrerw... (!!!)
rvm autolibs homebrew

# Installer Ruby avec RVM... (!!!)
rvm install 3.2.2

# Choix de la version de Ruby... (!!!)
rvm use 3.2.2

# Choix de la version par défaut de Ruby avec RVM... (!!!)
rvm --default use 3.2.2

# Installer le framework Rails pour Ruby... (!!!)
gem install rails

# Configuration de Git... (!!!)
git config --global user.name "$user"
git config --global user.email "$email"

# Amélioration affichage pour Git dans le Shell... (!!!)
git config --global color.ui auto

# Création SSH Key sur la machine pour Git... (!!!)
yes "" | ssh-keygen -t rsa -C $email -q -N ""

# Validation de la clé générée... (!!!)
ssh-add ~/.ssh/id_rsa

# Installation de Heroku /Mac OS... (!!!)
curl https://cli-assets.heroku.com/install.sh | sh

# Synchronisation avec le compte Heroku... (!!!)
heroku keys:add

###
##
# Copier/Coller la clé publique (SSH) dans votre profil /GitHub... (!!!)
# cat ~/.ssh/id_rsa.pub
##
###

exit
