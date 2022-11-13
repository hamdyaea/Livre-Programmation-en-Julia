using Random

function main()
    # Création d'une liste de nombres de 1 à 50.
    nombres = collect(1:50)
    
    # Création  d'une liste de nombre de 1 à 12.
    étoiles = collect(1:12)
    

    # On mélange les listes
    étoiles = shuffle!(étoiles)
    nombres = shuffle!(nombres)

    # Ici on sélectionne uniquement les nombres et les étoiles nécessaires dans une nouvelle liste.
    étoiles2 = collect(Iterators.take(étoiles, 2))
    nombres12 = collect(Iterators.take(nombres, 5)) 

    # Finalement, affichons les résultats
    println(étoiles2)
    println(nombres12)

end


main()
