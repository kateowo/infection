# INFECTION VICTORY CHECKS
# Will check (if the period is set) if either team has won


# Alive
execute if score time_s internal = victory_timeout time if score period internal matches 2 run function infection:win/alive

# Infected
execute if score alive alive_players matches ..0 if score infected alive_players matches 1.. if score period internal matches 2 run function infection:win/infected