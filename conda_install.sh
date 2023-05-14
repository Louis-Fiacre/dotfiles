#!/bin/bash
# installation de miniconda 
# Chemin de destination de Miniconda /opt
miniconda_dir="/opt"

# Vérification si Miniconda est déjà installé
if ! command -v conda &> /dev/null; then
    echo "Installation de Miniconda dans $miniconda_dir..."

    # URL de téléchargement de Miniconda
    miniconda_url="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"

    # Nom du fichier d'installation
    installer_file="Miniconda3.sh"

    # Téléchargement de Miniconda
    wget -O "$installer_file" "$miniconda_url"

    # Installation de Miniconda
    sudo bash "$installer_file" -p "$miniconda_dir"

    # Suppression du fichier d'installation
    rm "$installer_file"
    
    # Essai d'initialisation de Conda et gestion des erreurs
    if conda init bash --force; then
        echo "Initialisation de Conda réussie."
    else
        echo "Une erreur s'est produite lors de l'initialisation de Conda."
        # Actions à effectuer en cas d'erreur
fi


    echo "Miniconda installé"
else
    echo "Miniconda déjà installé"
fi

