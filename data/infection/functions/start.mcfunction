# INFECTION START SCRIPT


# Announce
title @a[team=infected] title {"text":"INFECTION","color":"green"}
title @a[team=infected] subtitle {"text":"You have 5 minutes to prepare before a random player is infected!","color":"white"}


# Timings
scoreboard players set time time 0
scoreboard players set time_seconds time 0
scoreboard players set timer_enabled global 1

execute as @a at @s if score sound_effects global matches 1 run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 100 1.5

function infection:starter_period

# World settings
worldborder set 1000 10
gamemode survival @a
effect clear @a weakness
effect clear @a regeneration
effect give @a regeneration 1 255 true
difficulty easy