using PyCall

math = pyimport("math")
println(math.sin(math.pi / 4))
