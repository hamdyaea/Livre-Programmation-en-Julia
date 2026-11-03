# Developer: Hamdy Abou El Anein
# Contact: hamdy.aea@protonmail.com
using Test
using Logging
include("guessthenum.jl")
include("loggerfile.jl")

@testset "Input handling without recursion" begin
    output = IOBuffer()
    @test jouer(IOBuffer("invalid\n0\n21\n1\n20\n10\n"), output; secret=10)
    text = String(take!(output))
    @test occursin("trop petit", text)
    @test occursin("trop grand", text)
    @test !jouer(IOBuffer(""), IOBuffer(); secret=10)
    @test_throws ArgumentError jouer(IOBuffer(""), IOBuffer(); secret=0)
end

@testset "Scoped logger" begin
    previous = global_logger()
    mktempdir() do directory
        path = joinpath(directory, "example.log")
        log_example(path)
        @test occursin("Une information", read(path, String))
        @test global_logger() === previous
    end
end
