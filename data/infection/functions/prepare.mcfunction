# INFECTION Preparation
# Runs before anything else and whenever /reload is triggered
# Ensures CORE scoreboards exist


# Creates the required scoreboards
# Timing game-states etc.
scoreboard objectives add time dummy
# User-config
scoreboard objectives add global dummy
# Internal settings
scoreboard objectives add internal dummy
# Death tracking
scoreboard objectives add death deathCount
# Store player Y axis
scoreboard objectives add y dummy

# Runs through defaults unless they have already ran
execute unless score defaults global matches 1 run function infection:defaults