# INFECTION INFECT SCRIPT


# Announce
tellraw @a [{"selector":"@a[scores={death=1..},team=alive]","color":"green","bold":true},{"text":" has been infected!","color":"dark_green","bold":false}]
execute as @a at @s if score sound_effects global matches 1 run playsound minecraft:entity.zombie_villager.cure player @s
# Bring down alive player counter
scoreboard players remove alive internal 1
# Swap teams
team join infected @a[scores={death=1..},team=alive]
scoreboard players add infected internal 1

# Reset everything when done
scoreboard players reset @a[scores={death=1..}] death