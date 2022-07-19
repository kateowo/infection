# INFECTION /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy
scoreboard objectives add death deathCount
scoreboard objectives add y dummy

scoreboard players set 100 internal 100

# defaults
execute unless score defaults internal matches 1.. run function infection:defaults