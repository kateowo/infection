# INFECTION Defaults
# Will reset all settings and create any scoreboards/bossbars for first-time use
# Upon any reloads, this will not be ran again


# Game states (periods) and tracking player's last-login (to avoid abuse)
scoreboard players set period time -1
scoreboard players set @a lastlogin -1
scoreboard objectives add lastlogin dummy

# Internal time settings - used for cross-referencing, should not be modified unless you know what you're doing
# Length of starter period since started (in seconds)
scoreboard players set starter_period time 10
scoreboard players set victory_timeout time 1000

# Disable the timer by default
scoreboard players set timer_enabled global 0


# OPTIONS
# Toggles whether a height limit is set in place
scoreboard players set height_limit global 1
scoreboard players set height_limit_y global 128
# Controls if sound effects are played throughout
scoreboard players set sound_effects global 1
# Auto-enchant tools and auto-smelt food/ores
scoreboard players set cut_clean global 1
scoreboard players set speed_uhc global 1


# World settings
gamerule doImmediateRespawn false
gamerule keepInventory false
worldborder set 10

# Create a scoreboard to track alive players (for both teams)
scoreboard objectives add alive_players dummy
scoreboard objectives modify alive_players displayname {"text":"INFECTION","color":"green","bold":true}
bossbar add infection:period {"text":""}
bossbar set infection:period players @a

# Teams
scoreboard players reset alive alive_players
scoreboard players reset infected alive_players

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

# Ensure defaults are not reset upon /reload
scoreboard players set defaults global 1