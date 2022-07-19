# INFECTION death checks


# is alive, infect them
execute as @a[team=alive] if score @s death matches 1.. run function infection:infect

# give infected gear
execute as @a[team=infected] if score @s death matches 1.. run give @s stone_axe
execute as @a[team=infected] if score @s death matches 1.. run give @s stone_pickaxe
execute as @a[team=infected] if score @s death matches 1.. run give @s shield
execute as @a[team=infected] if score @s death matches 1.. run scoreboard players set @s death 0