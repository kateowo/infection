# INFECTION HEIGHT LIMIT
# (if enabled)


# Get all player's Y axis
execute as @a store result score @s y run data get entity @s Pos[1]

# Check if over the height limit
execute as @a at @s if score @s y > height_limit_temp internal run fill ~ 150 ~ ~ 151 ~ barrier replace air