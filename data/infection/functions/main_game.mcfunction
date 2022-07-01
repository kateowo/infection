# INFECTION MAIN GAME
# Ran when main game period is started


team modify players friendlyFire true
scoreboard players set period internal 2

# Infect a random player
team leave @a[team=infected]
execute as @a at @s if score sound_effects global matches 1 run playsound minecraft:entity.zombie_villager.cure player @s
team join infected @r
team join alive @a[team=!spec,team=!infected]
tag @a[team=alive] add alive

scoreboard players set victory_timeout time 2500

# Up alive counters
execute as @a[team=alive] run scoreboard players add alive alive_players 1
execute as @a[team=infected] run scoreboard players add infected alive_players 1

title @a[team=!infected] title ["",{"selector":"@a[team=infected]","bold":true,"color":"#007A00"},{"text":" has been infected!","color":"dark_green"}]
title @a subtitle {"text":"The games have begun, your actionbar will display your current role.","color":"white"}

gamerule naturalRegeneration true

effect clear @a weakness
effect clear @a regeneration
effect clear @a resistance

scoreboard players set time_s internal 0