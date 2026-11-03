# Developer: Hamdy Abou El Anein
# Contact: hamdy.aea@protonmail.com
using Random

function jouer(input::IO=stdin, output::IO=stdout; secret::Int=rand(1:20))
    1 <= secret <= 20 || throw(ArgumentError("secret must be between 1 and 20"))
    while !eof(input)
        println(output, "Entrez un nombre de 1 à 20.")
        guess = tryparse(Int, strip(readline(input)))
        if guess === nothing || !(1 <= guess <= 20)
            println(output, "Veuillez entrer un entier de 1 à 20.")
        elseif guess < secret
            println(output, "Votre nombre est trop petit")
        elseif guess > secret
            println(output, "Votre nombre est trop grand")
        else
            println(output, "Bravo, vous avez trouvé le nombre !")
            return true
        end
    end
    return false
end

if abspath(PROGRAM_FILE) == @__FILE__
    jouer()
end
