# INFECTION passive effects
## given to infected


# particles
particle minecraft:block minecraft:lime_concrete_powder ~ ~0.8 ~ 0 0 0 0 2

# health boost
execute unless score period internal matches -1 run function infection:system/passive/health_boost

# tracker compass
execute as @a[team=infected,nbt=!{Inventory:[{id:"minecraft:compass",tag:{tag:{survivor_compass:1b}}}]}] at @s run function infection:system/passive/compass

# effects
effect give @a[team=infected] saturation 9999 40 true
execute as @a[team=infected] if score infected_speed_boost global matches 1.. run effect give @s speed 9999 0 true

execute if score percent75 internal matches 1 run effect clear @s strength
execute unless score percent75 internal matches 1 run effect give @s strength 9999 1 true