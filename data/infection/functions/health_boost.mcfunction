# INFECTION ALIVE HEALTH BOOST
# Proportioned to amount of infected present


# Is 25% infected?
# STORE CURRENT ALIVE/INFECTED PLAYERS INTERNALLY FOR OPERATION     scoreboard players operation 
# WORK OUT PROPORTION OF INFECTED:ALIVE - scoreboard players operation infected alive_players /= alive alive_players
# THEN MATCH HEALTH BOOST AND (WORLD BORDER?) TO THAT
# EG. 25% INFECTED = 25% HEALTH BOOST

scoreboard players operation total alive_players = alive alive_players

scoreboard players operation total alive_players += infected alive_players

scoreboard players operation percent alive_players = infected alive_players

scoreboard players operation percent alive_players *= 100 internal

scoreboard players operation percent alive_players /= total alive_players


# 25-49%
execute if score percent alive_players matches 25.. if score percent alive_players matches ..49 unless score percent25 internal matches 1 run scoreboard players set percent25 internal 0
execute if score percent alive_players matches 25.. if score percent alive_players matches ..49 unless score percent25 internal matches 1 if score period time matches 2 run worldborder set 300 400
# If time is over the new max, set to ~200 below the new max
execute if score percent alive_players matches 25.. if score percent alive_players matches ..49 unless score percent25 internal matches 1 run scoreboard players set timeout_temp internal 600
execute if score percent alive_players matches 25.. if score percent alive_players matches ..49 unless score percent25 internal matches 1 if score time_seconds time >= timeout_temp internal run scoreboard players set time_seconds time 300
# Set new max
execute if score percent alive_players matches 25.. if score percent alive_players matches ..49 unless score percent25 internal matches 1 run scoreboard players set victory_timeout time 600
execute if score percent alive_players matches 25.. if score percent alive_players matches ..49 unless score percent25 internal matches 1 run scoreboard players set percent25 internal 1

# 50-74%
execute if score percent alive_players matches 50.. if score percent alive_players matches ..74 unless score percent50 internal matches 1 run scoreboard players set percent50 internal 0
execute if score percent alive_players matches 50.. if score percent alive_players matches ..74 unless score percent50 internal matches 1 if score period time matches 2 run worldborder set 200 300
# If time is over the new max, set to ~200 below the new max
execute if score percent alive_players matches 50.. if score percent alive_players matches ..74 unless score percent50 internal matches 1 run scoreboard players set timeout_temp internal 400
execute if score percent alive_players matches 50.. if score percent alive_players matches ..74 unless score percent50 internal matches 1 if score time_seconds time >= timeout_temp internal run scoreboard players set time_seconds time 150
# Set new max
execute if score percent alive_players matches 50.. if score percent alive_players matches ..74 unless score percent50 internal matches 1 run scoreboard players set victory_timeout time 400
execute if score percent alive_players matches 50.. if score percent alive_players matches ..74 unless score percent50 internal matches 1 run scoreboard players set percent50 internal 1

# 75-100%
execute if score percent alive_players matches 75.. if score percent alive_players matches ..100 unless score percent75 internal matches 1 run scoreboard players set percent75 internal 0
execute if score percent alive_players matches 75.. if score percent alive_players matches ..100 unless score percent75 internal matches 1 if score period time matches 2 run worldborder set 100 200
# If time is over the new max, set to ~200 below the new max
execute if score percent alive_players matches 75.. if score percent alive_players matches ..100 unless score percent75 internal matches 1 run scoreboard players set timeout_temp internal 200
execute if score percent alive_players matches 75.. if score percent alive_players matches ..100 unless score percent75 internal matches 1 if score time_seconds time >= timeout_temp internal run scoreboard players set time_seconds time 0
# Set new max
execute if score percent alive_players matches 75.. if score percent alive_players matches ..100 unless score percent75 internal matches 1 run scoreboard players set victory_timeout time 200
execute if score percent alive_players matches 75.. if score percent alive_players matches ..100 unless score percent75 internal matches 1 run scoreboard players set percent75 internal 1