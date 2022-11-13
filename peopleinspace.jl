# Installez les librairies si vous ne les avez pas
using HTTP
using JSON3


function main()
    # Appel de l'api open-notify qui renvoie la liste des peronnes dans l'esapce au format json
    res = HTTP.request("GET","http://api.open-notify.org/astros.json");

    rawlist = String(res.body)
    
    # Chargement du résultat au format json pour pouvoir le lire en json
    jsonlist = JSON3.read(rawlist)


    # Boucle for qui affiche le résultat voulu
    for i in jsonlist["people"]
        println(i["name"])
        println(i["craft"])
        println("\n\n")
    end
    
    # Affiche le nombre de personnes dans l'espace
    number = jsonlist["number"]
    println("Nombre de personne dans l'espace : ",number)
end

main()
