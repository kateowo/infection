# INFECTION Defaults
# Will reset all settings and create any scoreboards/bossbars for first-time use
# Upon any reloads, this will not be ran again


# Game states (periods) and tracking player's last-login (to avoid abuse)
scoreboard players set period internal -1
scoreboard players set @a lastlogin -1
scoreboard objectives add lastlogin dummy

# internal time settings
## should be left unless you know what you're doing
scoreboard players set starter_period internal 480
## automatically set by datapack throughout
scoreboard players set victory_timeout internal 700


# OPTIONS
## build height limit
scoreboard players set height_limit global 1
scoreboard players set height_limit_temp internal 145
## sound effects
scoreboard players set sound_effects global 1
## cut clean & speed uhc
scoreboard players set cut_clean global 1
scoreboard players set speed_uhc global 1
## last survivor glows
scoreboard players set glow_last_survivor global 1


# world
gamerule doImmediateRespawn true
gamerule keepInventory false
difficulty easy
worldborder set 10

# Create a scoreboard to track alive players (for both teams)
bossbar add infection:period {"text":""}
bossbar set infection:period players @a

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
scoreboard players set defaults global 1