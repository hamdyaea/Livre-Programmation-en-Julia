# Importons la librairie Random
using Random

# Création de la fonction ordi_start()
function ordi_start()
    global ordinum

    # l'ordinateur choisi un nombre de 1 à 20
    ordinum = shuffle!(collect(1:20))
    ordinum = ordinum[1]
end

# Création de la fonction joueur_start()
function joueur_start()
    # le joueur entre un nombre de 1 à 20
    println("Entrez un nombre de 1 à 20.")
    usernum = readline()
    # On change le caractère de string à integer
    usernum = parse(Int64, usernum)

    # Comparaisons entre le nombre de l'ordinateur et celui du joueur
    # Si ce n'est pas égale, cette fonction est rappelée.
    if usernum < ordinum
        println("Votre nombre est trop petit")
        joueur_start()

    elseif usernum > ordinum
        println("Votre nombre est trop grand")
        joueur_start()


    elseif ordinum == usernum
        println("Bravo, vous avez trouvé le nombre !")
    end

end

# appel des fonctions
ordi_start()
joueur_start()
