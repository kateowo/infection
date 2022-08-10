# INFECTION infect
## used to infect players


# announce
tellraw @a [{"selector":"@s","color":"green","bold":true},{"text":" has been infected!","color":"dark_green","bold":false}]
# sfx
execute as @a at @s if score sound_effects global matches 1 run playsound minecraft:entity.zombie_villager.cure player @s

# swap teams
scoreboard players remove alive internal 1
team join infected @s
scoreboard players add infected internal 1