# INFECTION win checks
# Will check (if the period is set) if either team has won


## alive
execute if score time_s internal >= victory_timeout internal if score period internal matches 2 run function infection:win/alive
## infected
execute if score alive internal matches ..0 if score infected internal matches 1.. if score period internal matches 2 run function infection:win/infected