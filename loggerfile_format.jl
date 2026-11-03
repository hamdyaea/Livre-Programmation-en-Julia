# Developer: Hamdy Abou El Anein
# Contact: hamdy.aea@protonmail.com
include(joinpath(@__DIR__, "loggerfile.jl"))
if abspath(PROGRAM_FILE) == @__FILE__
    log_example()
end
