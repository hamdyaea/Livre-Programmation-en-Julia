# Nous créons la variable count avec comme valeur 10
count = 10

# Création de la fonction compteur()
function compteur()
    # count est global pour pouvoir prendre sa valeur à l'extérieur de la fonction
    global count
    # la valeur maximale est 15
    max = 15
    # A chaque appel de la fonction on ajoute 1 à count
    count += 1
    # On affiche la valeur de count
    println(count)
    # Test si count est plus petit que max
    if count < max
        # count est plus petit que max alors on rappelle la fonction compteur()
        compteur()
    end
end


compteur()
