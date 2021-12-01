# INFECTION MAIN LOOP
# Ran constantly throughout the game

# Try to find a player and load setup-flow
execute as @a unless score setup_flow internal matches 1 run function infection:setup_flow

# Move up player if they spawn underground
execute if score period time matches -1 as @a at @s unless block ~ ~1 ~ #infection:safe run tp @s ~ ~5 ~ 



# Runs the necessary functions & stores variables
execute if score timer_enabled global matches 1 unless score period time matches 3 run function infection:time
# Display bossbar
function infection:bossbar
# Death tracking (+ reset before perma deaths can happen, @Bluetofu___ for pointing that out)
execute as @a if score @s death matches 1.. if score period time matches 2 run function infection:death
execute unless score period time matches 2 run scoreboard players reset @a[scores={death=1..}] death
# Show bossbar to all players
bossbar set infection:period players @a

# Options
execute if score cut_clean global matches 1 run function infection:cut_clean
execute if score speed_uhc global matches 1 run function infection:speed_uhc

# Run winning checks
execute if score period time matches 2 run function infection:victory_checks

# Summon particles
execute as @a[team=infected] at @s run particle minecraft:spore_blossom_air ~ ~0.5 ~ 0 0 0 0 2

# Survivors proportioned health
execute unless score period time matches -1 run function infection:health_boost

# Give infected armour
execute unless score period time matches -1 unless score period time matches 0 run function infection:give_sets

# Actionbars
title @a[team=alive] actionbar ["",{"text":"YOU ARE ","color":"dark_green"},{"text":"ALIVE","bold":true,"color":"green"},{"text":", SURVIVE THE INFECTED","color":"dark_green"}]
title @a[team=infected] actionbar ["",{"text":"YOU ARE ","color":"dark_green"},{"text":"INFECTED","bold":true,"color":"green"},{"text":", KILL ALL THE SURVIVORS","color":"dark_green"}]


# Game-states

# Pre-game, internally -1
execute if score period time matches -1 run gamemode adventure @a[gamemode=!adventure]
execute if score period time matches -1 run effect give @a weakness 9999 255 true
execute if score period time matches -1 run effect give @a resistance 9999 255 true
execute if score period time matches -1 run effect give @a regeneration 9999 255 true
execute if score period time matches -1 run scoreboard players set @a lastlogin -1

# Starter period, internally 0
execute as @a at @s if score period time matches 0 unless score @s lastlogin matches 0 run effect clear @s weakness
execute as @a at @s if score period time matches 0 unless score @s lastlogin matches 0 run effect clear @s regeneration
execute as @a at @s if score period time matches 0 unless score @s lastlogin matches 0 run effect give @s resistance 120 255 true
execute as @a at @s if score period time matches 0 unless score @s lastlogin matches 0 run gamemode survival @s
execute as @a at @s if score period time matches 0 unless score @s lastlogin matches 0 run scoreboard players set @s lastlogin 0

# Main period, internally 1
execute as @a at @s if score period time matches 1 unless score @s lastlogin matches 1 run effect clear @s weakness
execute as @a at @s if score period time matches 1 unless score @s lastlogin matches 1 run effect clear @s regeneration
execute as @a at @s if score period time matches 1 unless score @s lastlogin matches 1 run effect clear @s resistance
execute as @a at @s if score period time matches 1 unless score @s lastlogin matches 1 run gamemode survival @s
execute as @a at @s if score period time matches 1 unless score @s lastlogin matches 1 run scoreboard players set @s lastlogin 1

# Victory period, internally 3
execute as @a at @s if score period time matches 3 unless score @s lastlogin matches 3 run effect clear @s weakness
execute as @a at @s if score period time matches 3 unless score @s lastlogin matches 3 run effect clear @s regeneration
execute as @a at @s if score period time matches 3 unless score @s lastlogin matches 3 run effect clear @s resistance
execute as @a at @s if score period time matches 3 unless score @s lastlogin matches 3 run gamemode spectator @s
execute as @a at @s if score period time matches 3 unless score @s lastlogin matches 3 run scoreboard players set @s lastlogin 3