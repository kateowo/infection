# INFECTION main game
## ran when main game period is started


# world
team modify players friendlyFire true
gamerule naturalRegeneration true

# scores
scoreboard players set victory_timeout internal 2500

# infect a random player
team leave @a[team=infected]
team join infected @r
team join alive @a[team=!spec,team=!infected]
tag @a[team=alive] add alive

# count players
execute as @a[team=alive] run scoreboard players add alive internal 1
execute as @a[team=infected] run scoreboard players add infected internal 1

# announce
title @a[team=infected] title ["",{"text":"You","bold":true,"color":"#007A00"},{"text":" have been infected!","color":"dark_green"}]
title @a[team=!infected] title ["",{"selector":"@a[team=infected]","bold":true,"color":"#007A00"},{"text":" has been infected!","color":"dark_green"}]
title @a subtitle {"text":"The games have begun, your actionbar will display your current role.","color":"white"}
# sfx
execute as @a at @s if score sound_effects global matches 1 run playsound minecraft:entity.zombie_villager.cure player @s


scoreboard players set time internal 0
scoreboard players set time_s internal 0
scoreboard players set period internal 2