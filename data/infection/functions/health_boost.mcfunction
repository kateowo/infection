# INFECTION ALIVE HEALTH BOOST
# Proportioned to amount of infected present


# Calculate total players (alive & infected)
scoreboard players operation total alive_players = alive alive_players
scoreboard players operation total alive_players += infected alive_players
# Calculate percentage infected
scoreboard players operation percent alive_players = infected alive_players
scoreboard players operation percent alive_players *= 100 internal
scoreboard players operation percent alive_players /= total alive_players


# 20-35%
execute if score percent alive_players matches 20..35 unless score percent25 internal matches 1 run scoreboard players set percent25 internal 0
execute if score percent alive_players matches 20..35 unless score percent25 internal matches 1 run effect give @a[team=alive] regeneration 1 255 true
execute if score percent alive_players matches 20..35 unless score percent25 internal matches 1 run effect give @a[team=alive] health_boost 9999 0 true
execute if score percent alive_players matches 20..35 unless score percent25 internal matches 1 if score period time matches 2 run worldborder set 450 400
# Set new victory timeout
execute if score percent alive_players matches 20..35 unless score percent25 internal matches 1 run scoreboard players set time_seconds time 0
execute if score percent alive_players matches 20..35 unless score percent25 internal matches 1 run scoreboard players set victory_timeout time 1100
execute if score percent alive_players matches 20..35 unless score percent25 internal matches 1 run scoreboard players set percent25 internal 1

# 36-50%
execute if score percent alive_players matches 36..50 unless score percent50 internal matches 1 run scoreboard players set percent50 internal 0
execute if score percent alive_players matches 36..50 unless score percent50 internal matches 1 run effect give @a[team=alive] regeneration 1 255 true
execute if score percent alive_players matches 36..50 unless score percent50 internal matches 1 run effect give @a[team=alive] health_boost 9999 2 true
execute if score percent alive_players matches 36..50 unless score percent50 internal matches 1 if score period time matches 2 run worldborder set 300 400
# Set new victory timeout
execute if score percent alive_players matches 36..50 unless score percent50 internal matches 1 run scoreboard players set time_seconds time 0
execute if score percent alive_players matches 36..50 unless score percent50 internal matches 1 run scoreboard players set victory_timeout time 800
execute if score percent alive_players matches 36..50 unless score percent50 internal matches 1 run scoreboard players set percent50 internal 1

# 60-79%
execute if score percent alive_players matches 60..79 unless score percent75 internal matches 1 run scoreboard players set percent75 internal 0
execute if score percent alive_players matches 60..79 unless score percent75 internal matches 1 run effect give @a[team=alive] regeneration 1 255 true
execute if score percent alive_players matches 60..79 unless score percent75 internal matches 1 run effect give @a[team=alive] health_boost 9999 4 true
execute if score percent alive_players matches 60..79 unless score percent75 internal matches 1 if score period time matches 2 run worldborder set 260 400
# Set new victory timeout
execute if score percent alive_players matches 60..79 unless score percent75 internal matches 1 run scoreboard players set time_seconds time 0
execute if score percent alive_players matches 60..79 unless score percent75 internal matches 1 run scoreboard players set victory_timeout time 450
execute if score percent alive_players matches 60..79 unless score percent75 internal matches 1 run scoreboard players set percent75 internal 1

# 80-100%
execute if score percent alive_players matches 80..100 unless score percent100 internal matches 1 run scoreboard players set percent100 internal 0
execute if score percent alive_players matches 80..100 unless score percent100 internal matches 1 run effect give @a[team=alive] regeneration 1 255 true
execute if score percent alive_players matches 80..100 unless score percent100 internal matches 1 run effect give @a[team=alive] health_boost 9999 5 true
execute if score percent alive_players matches 80..100 unless score percent100 internal matches 1 if score period time matches 2 run worldborder set 120 400
# Set new victory timeout
execute if score percent alive_players matches 80..100 unless score percent100 internal matches 1 run scoreboard players set time_seconds time 0
execute if score percent alive_players matches 80..100 unless score percent100 internal matches 1 run scoreboard players set victory_timeout time 100
execute if score percent alive_players matches 80..100 unless score percent100 internal matches 1 run scoreboard players set percent100 internal 1


# Apply glowing to last survivor
## TODO: add option for last player glowing
execute if score alive alive_players matches 1 run effect give @a[team=alive] glowing 9999 255 true