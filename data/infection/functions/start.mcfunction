# INFECTION start


scoreboard players set can_start internal 0
scoreboard players set can_start_alive internal 0
scoreboard players set can_start_infected internal 0
scoreboard players set can_start_period internal 0

# team check
## alive
execute unless entity @a[team=!alive,team=!infected] run scoreboard players set can_start_alive internal 1
## infected
execute if entity @a[team=infected] run scoreboard players set can_start_alive infected 1
execute if score can_start_alive internal matches 1.. if score can_start_infected internal matches 1.. run scoreboard players set can_start internal 1
execute unless score can_start_alive internal matches 1.. unless score can_start_infected internal matches 1.. run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"X","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, at least 1 player must be infected (with everyone else alive).","color":"red"}]
# period check
execute if score period internal matches -1 run scoreboard players set can_start_period internal 1
execute unless score can_start_period internal matches 1.. run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"X","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, a game is already in progress.","color":"red"}]

## debug!
execute if score debug internal matches 77 run scoreboard players set can_start internal 1


# can start?
## yes, proceed to main start
execute if score can_start internal matches 1.. run function infection:start_c
## no, ineligible
execute unless score can_start internal matches 1.. run playsound minecraft:block.note_block.bass player @a