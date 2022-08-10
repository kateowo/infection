# INFECTION start
## (if requirements met)


scoreboard players set can_start internal 0

# count up players
## alive
scoreboard players reset start_alive internal
execute as @a[team=alive] run scoreboard players add start_alive internal 1
## infected
scoreboard players reset start_infected internal
execute as @a[team=infected] run scoreboard players add start_infected internal 1

# check
## atleast 1 alive & infected
execute if score start_alive internal matches 1.. if score start_infected internal matches 1.. run scoreboard players set can_start internal 1


# run
execute unless score can_start internal matches 1.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"X","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, atleast 1 player must be infected with every other player alive.","color":"green"}]
execute if score can_start internal matches 1.. run function infection:start_c