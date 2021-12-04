# INFECTION TIME MANAGING


# Count in seconds etc.
scoreboard players add time time 1
execute if score enabled global matches 1 run scoreboard players add rise_time time 1

execute if score time time matches 20.. run scoreboard players add time_seconds time 1
execute if score time time matches 20.. run scoreboard players set time time 0

execute if score time_seconds time = starter_period time if score period time matches 0 run function infection:main_game

# Stores current timer & max y level in the bossbar
execute unless score period time matches 2 store result bossbar infection:period value run scoreboard players get time_seconds time

execute store result score border time run worldborder get