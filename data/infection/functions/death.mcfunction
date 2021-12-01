# INFECTION DEATH HANDLING
# Constantly detects when a player has an entry in the death scoreboard


# If alive, infect them
execute as @a[team=alive,scores={death=1..}] run function infection:infect

# If infected, replace armour
execute as @a[team=infected,scores={death=1..}] run function infection:give_sets