# INFECTION setup
## dynamically generated


# tellraw
## header
tellraw @s ["",{"text":"\nINFECTION\n","color":"green","bold":true}]
## intro
tellraw @s ["",{"text":"Before the game begins, check your options and invite everyone to the game. Hover over titles for more information.\n"}]
## options
tellraw @s ["",{"text":"Options:","color":"yellow"}]

# height limit
## enabled
execute if score height_limit global matches 1.. run tellraw @s ["",{"text":"Build height limit \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Limits the build height to y200."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/height_limit/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score height_limit global matches 1.. run tellraw @s ["",{"text":"Build height limit \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Limits the build height to y200."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/height_limit/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# infected speed boost
## enabled
execute if score infected_speed_boost global matches 1.. run tellraw @s ["",{"text":"Infected speed boost \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Gives the infected a permanent speed boost to prevent an infinite chase!"}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/infected_speed_boost/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score infected_speed_boost global matches 1.. run tellraw @s ["",{"text":"Infected speed boost \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Gives the infected a permanent speed boost to prevent an infinite chase!"}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/infected_speed_boost/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# alive health boost
## enabled
execute if score alive_health_boost global matches 1.. run tellraw @s ["",{"text":"Alive health boost \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Gives the alive players extra health based on the percentage infected."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/alive_health_boost/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score alive_health_boost global matches 1.. run tellraw @s ["",{"text":"Alive health boost \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Gives the alive players extra health based on the percentage infected."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/alive_health_boost/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# glow last survivor
## enabled
execute if score glow_last_survivor global matches 1.. run tellraw @s ["",{"text":"Glow last survivor \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Gives the last remaining survivor a glowing effect."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/glow_last_survivor/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score glow_last_survivor global matches 1.. run tellraw @s ["",{"text":"Glow last survivor \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Gives the last remaining survivor a glowing effect."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/glow_last_survivor/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# timer speed
tellraw @s ["",{"text":"Timer speed \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Controls the speed of the timer ticks counting seconds. (default 20 ticks = 1 second)"}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/timer_speed/down"}},{"text":"  ","color":"white"},{"score":{"name":"timer_speed","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/timer_speed/up"}},{"text":" ","color":"dark_gray"}]

# cut clean
## enabled
execute if score cut_clean global matches 1.. run tellraw @s ["",{"text":"Cut Clean \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically smelts ores and cooks food."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/cut_clean/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score cut_clean global matches 1.. run tellraw @s ["",{"text":"Cut Clean \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically smelts ores and cooks food."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/cut_clean/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# speed uhc
## enabled
execute if score speed_uhc global matches 1.. run tellraw @s ["",{"text":"Speed UHC \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically enchants tools with efficiency."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/speed_uhc/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score speed_uhc global matches 1.. run tellraw @s ["",{"text":"Speed UHC \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically enchants tools with efficiency."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function infection:setup/speed_uhc/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

## footer
tellraw @s ["",{"text":"\nOnce you're ready, run "},{"text":"/function infection:start","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function infection:start"}},{"text":" and let the games begin!\n"}]


scoreboard players set setup internal 1