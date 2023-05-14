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
    bash "$installer_file" -b -p "$miniconda_dir"

    # Suppression du fichier d'installation
    rm "$installer_file"

    echo "Miniconda installé"
else
    echo "Miniconda déjà installé"
fi

