#!/bin/bash

# Vérification du nombres d'arguments
if [ $# -eq 0 ]
then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
fi

for nom_utilisateur in $*
do
    # Vérification de l'existance de l'utilisateur
    if cat /etc/passwd | grep $nom_utilisateur > /dev/null
    then
        echo "L'utilisateur $nom_utilisateur existe déjà"
    else
        # Création de l'utilisateur
        useradd $nom_utilisateur
            
            # Vérification si la création a réussi
            if cat /etc/passwd | grep $nom_utilisateur > /dev/null
            then
                echo "L'utilisateur $nom_utilisateur a été crée"
            else   
                echo "Erreur à la création de l'utilisateur $nom_utilisateur"
            fi
    fi
done
exit