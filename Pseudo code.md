Début du Script

    SI pas d'arguments

    ALORS

        AFFICHER "Il manque les noms d'utilisateurs en argument \- Fin du script"

        SORTIE

    FIN SI

    POUR CHAQUE noms d'utilisateurs dans les arguments

    FAIRE

        SI l'utilisateur existe

        ALORS

            AFFICHER "L'utilisateur <nom\_utilisateur> existe déjà"

        SINON

            CREER l'utilisateur

                SI le compte a été creer

                ALORS

                    Afficher "L'utilisateur <nom\_utilisateur> a été crée"

                SINON

                    Afficher "Erreur à la création de l'utilisateur <nom\_utilisateur>"

                FIN SI

        FIN SI

    FIN POUR

Fin du Script