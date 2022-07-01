# INFECTION DEATH HANDLING
# Constantly detects when a player has an entry in the death scoreboard


# If alive, infect them
execute as @a[team=alive] if score @s death matches 1.. run function infection:infect

execute as @a[team=infected] if score @s death matches 1.. run give @s stone_axe
execute as @a[team=infected] if score @s death matches 1.. run give @s shield
execute as @a[team=infected] if score @s death matches 1.. run scoreboard players set @s death 0