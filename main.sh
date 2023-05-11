#!/bin/bash

# Chemin du répertoire contenant le script
scripts_dir="$(cd "$(dirname "$0")" && pwd)"

# Liste des fichiers à exécuter
files_to_execute=(
    "package_install.sh"
    "conda_install.sh"
    "bash_init.sh"
)

# Parcours des fichiers à exécuter
for file in "${files_to_execute[@]}"
do
    # Chemin complet du fichier
    file_path="$scripts_dir/$file"
    
    bash "$file_path"

done
