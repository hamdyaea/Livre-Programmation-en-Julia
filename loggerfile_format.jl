using Logging

file = open("log.txt", "w+")

logger = SimpleLogger(file)

global_logger(logger)

@info("Une information")
@warn("Une alerte warning")
@debug("Message de debug")



close(file)
