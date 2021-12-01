# INFECTION ALIVE HEALTH BOOST
# Proportioned to amount of survivors left


# Initial
execute if score infected alive_players matches 1 unless score 7players internal matches 1 run scoreboard players set 7players internal 0
execute if score infected alive_players matches 1 unless score 7players internal matches 1 run effect give @a[team=alive] health_boost 9999 0 true
execute if score infected alive_players matches 1 unless score 7players internal matches 1 if score period time matches 2 run worldborder set 700 800
# If time is over the new max, set to 200 below the new max
execute if score infected alive_players matches 1 unless score 7players internal matches 1 run scoreboard players set timeout_temp internal 800
execute if score infected alive_players matches 1 unless score 7players internal matches 1 if score time_seconds time >= timeout_temp internal run scoreboard players set time_seconds time 600
# Set new max
execute if score infected alive_players matches 1 unless score 7players internal matches 1 run scoreboard players set victory_timeout time 800
execute if score infected alive_players matches 1 unless score 7players internal matches 1 run scoreboard players set 7players internal 1

# 6 players
execute if score alive alive_players matches 6 unless score 6players internal matches 1 run scoreboard players set 6players internal 0
execute if score alive alive_players matches 6 unless score 6players internal matches 1 run effect give @a[team=alive] health_boost 9999 1 true
execute if score alive alive_players matches 6 unless score 6players internal matches 1 if score period time matches 2 run worldborder set 600 600
# If time is over the new max, set to 200 below the new max
execute if score alive alive_players matches 6 unless score 6players internal matches 1 run scoreboard players set timeout_temp internal 700
execute if score alive alive_players matches 6 unless score 6players internal matches 1 if score time_seconds time >= timeout_temp internal run scoreboard players set time_seconds time 500
# Set new max
execute if score alive alive_players matches 6 unless score 6players internal matches 1 run scoreboard players set victory_timeout time 700
execute if score alive alive_players matches 6 unless score 6players internal matches 1 run scoreboard players set 6players internal 1

# 5 players
execute if score alive alive_players matches 5 unless score 5players internal matches 1 run scoreboard players set 5players internal 0
execute if score alive alive_players matches 5 unless score 5players internal matches 1 run effect give @a[team=alive] health_boost 9999 2 true
execute if score alive alive_players matches 5 unless score 5players internal matches 1 if score period time matches 2 run worldborder set 500 600
# If time is over the new max, set to 200 below the new max
execute if score alive alive_players matches 5 unless score 5players internal matches 1 run scoreboard players set timeout_temp internal 600
execute if score alive alive_players matches 5 unless score 5players internal matches 1 if score time_seconds time >= timeout_temp internal run scoreboard players set time_seconds time 400
# Set new max
execute if score alive alive_players matches 5 unless score 5players internal matches 1 run scoreboard players set victory_timeout time 600
execute if score alive alive_players matches 5 unless score 5players internal matches 1 run scoreboard players set 5players internal 1

# 4 players
execute if score alive alive_players matches 4 unless score 4players internal matches 1 run scoreboard players set 4players internal 0
execute if score alive alive_players matches 4 unless score 4players internal matches 1 run effect give @a[team=alive] health_boost 9999 3 true
execute if score alive alive_players matches 4 unless score 4players internal matches 1 if score period time matches 2 run worldborder set 400 600
# If time is over the new max, set to 200 below the new max
execute if score alive alive_players matches 4 unless score 4players internal matches 1 run scoreboard players set timeout_temp internal 500
execute if score alive alive_players matches 4 unless score 4players internal matches 1 if score time_seconds time >= timeout_temp internal run scoreboard players set time_seconds time 300
# Set new max
execute if score alive alive_players matches 4 unless score 4players internal matches 1 run scoreboard players set victory_timeout time 500
execute if score alive alive_players matches 4 unless score 4players internal matches 1 run scoreboard players set 4players internal 1

# 3 players
execute if score alive alive_players matches 3 unless score 3players internal matches 1 run scoreboard players set 3players internal 0
execute if score alive alive_players matches 3 unless score 3players internal matches 1 run effect give @a[team=alive] health_boost 9999 4 true
execute if score alive alive_players matches 3 unless score 3players internal matches 1 if score period time matches 2 run worldborder set 300 450
# If time is over the new max, set to 200 below the new max
execute if score alive alive_players matches 3 unless score 3players internal matches 1 run scoreboard players set timeout_temp internal 400
execute if score alive alive_players matches 3 unless score 3players internal matches 1 if score time_seconds time >= timeout_temp internal run scoreboard players set time_seconds time 200
# Set new max
execute if score alive alive_players matches 3 unless score 3players internal matches 1 run scoreboard players set victory_timeout time 400
execute if score alive alive_players matches 3 unless score 3players internal matches 1 run scoreboard players set 3players internal 1

# 2 players
execute if score alive alive_players matches 2 unless score 2players internal matches 1 run scoreboard players set 2players internal 0
execute if score alive alive_players matches 2 unless score 2players internal matches 1 run effect give @a[team=alive] health_boost 9999 6 true
execute if score alive alive_players matches 2 unless score 2players internal matches 1 if score period time matches 2 run worldborder set 200 450
# If time is over the new max, set to 200 below the new max
execute if score alive alive_players matches 2 unless score 2players internal matches 1 run scoreboard players set timeout_temp internal 300
execute if score alive alive_players matches 2 unless score 2players internal matches 1 if score time_seconds time >= timeout_temp internal run scoreboard players set time_seconds time 100
# Set new max
execute if score alive alive_players matches 2 unless score 2players internal matches 1 run scoreboard players set victory_timeout time 300
execute if score alive alive_players matches 2 unless score 2players internal matches 1 run scoreboard players set 2players internal 1

# 1 player (last man standing)
execute if score alive alive_players matches 1 unless score 1player internal matches 1 run scoreboard players set 1player internal 0
execute if score alive alive_players matches 1 unless score 1player internal matches 1 run effect give @a[team=alive] health_boost 9999 7 true
execute if score alive alive_players matches 1 unless score 1player internal matches 1 if score period time matches 2 run worldborder set 120 350
# If time is over the new max, set to 200 below the new max
execute if score alive alive_players matches 1 unless score 1player internal matches 1 run scoreboard players set timeout_temp internal 200
execute if score alive alive_players matches 1 unless score 1player internal matches 1 if score time_seconds time >= timeout_temp internal run scoreboard players set time_seconds time 0
# Set new max
execute if score alive alive_players matches 2 unless score 1player internal matches 1 run scoreboard players set victory_timeout time 200
execute if score alive alive_players matches 1 unless score 1player internal matches 1 run scoreboard players set 1player internal 1