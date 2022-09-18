# INFECTION HEIGHT LIMIT
# (if enabled)


# retrieve player Y pos
execute as @a store result score @s y run data get entity @s Pos[1]

# check if over height limit
## if so, replace blocks above with barriers
execute as @a at @s if score @s y > height_limit_temp internal run fill ~ 150 ~ ~ 151 ~ barrier replace air