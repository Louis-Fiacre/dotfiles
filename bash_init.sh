#!/bin/bash
# Copie les fichiers de configuration bash vers §HOME


dotfiles_dir="$(cd "$(dirname "$0")" && pwd)"
bash_dir="$dotfiles_dir/bash"

copy_files() {
    local source_file="$1"
    local destination="$2"
    
    # Vérification si le fichier source existe
    if [ -e "$source_file" ]; then
        # Copie du fichier source vers le répertoire de destination
        cp "$source_file" "$destination"
        echo "Copied $source_file to $destination"
    else
        echo "File $source_file does not exist"
    fi
}

shopt -s dotglob
for file in "$bash_dir"/*
do
    filename=$(basename "$file")
    destination_file="$HOME/$filename"
    
    copy_files "$file" "$destination_file"

done

echo "Dotfiles copy complete!"

source $HOME/.bashrc

