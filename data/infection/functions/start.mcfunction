# INFECTION START SCRIPT


# announce
title @a title {"text":"INFECTION","color":"green"}
title @a subtitle {"text":"You have 5 minutes to prepare before a random player is infected!","color":"white"}
# sfx
execute as @a at @s if score sound_effects global matches 1 run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 100 1.5

# world
worldborder set 1000 10
schedule function infection:close_border 10s
gamemode survival @a[gamemode=!spectator]
gamerule naturalRegeneration true

# set period
scoreboard players set period internal 0