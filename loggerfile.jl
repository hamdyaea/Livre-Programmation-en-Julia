# Developer: Hamdy Abou El Anein
# Contact: hamdy.aea@protonmail.com
using Logging

function log_example(path="log.txt")
    open(path, "a") do stream
        with_logger(SimpleLogger(stream)) do
            @info "Une information"
            @warn "Une alerte warning"
            @debug "Message de debug"
        end
    end
end

if abspath(PROGRAM_FILE) == @__FILE__
    log_example()
end
