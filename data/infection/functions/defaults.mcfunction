# INFECTION defaults


# general timings
scoreboard players set period internal -1

# internal time settings
## should be left unless you know what you're doing
scoreboard players set starter_period internal 480
## automatically set by datapack throughout
scoreboard players set victory_timeout internal 700

# extras
scoreboard players set cut_clean global 1
scoreboard players set speed_uhc global 1

# build height limit
scoreboard players set height_limit global 1
scoreboard players set height_limit_temp internal 145

# sound effects
scoreboard players set sound_effects global 1

# last survivor glows
scoreboard players set glow_last_survivor global 1

# world
worldborder set 10
gamerule doImmediateRespawn true
gamerule keepInventory false
difficulty easy

# bossbar
bossbar add infection:period ""

# Teams
scoreboard players reset alive internal
scoreboard players reset infected internal

# Create both the alive and the infected team
# ALIVE
team add alive
team modify alive friendlyFire false
# INFECTED
team add infected
team modify infected color green
team modify infected friendlyFire false

# Set initial world difficulty
difficulty peaceful

# World border
worldborder damage buffer 45

# Ensure defaults are not reset upon /reload
scoreboard players set defaults internal 1