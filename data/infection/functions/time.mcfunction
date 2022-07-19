# INFECTION time intervals


function fm:clock

# last login
## -1, pre-start
execute if score period internal matches -1 run gamemode adventure @a[gamemode=!adventure]
execute if score period internal matches -1 run effect give @a weakness 9999 255 true
execute if score period internal matches -1 run effect give @a resistance 9999 255 true
execute if score period internal matches -1 run effect give @a regeneration 9999 255 true
execute if score period internal matches -1 run scoreboard players set @a last_login -1
## 0, grace period
execute as @a at @s if score period internal matches 0 unless score @s last_login matches 0 run effect clear @s weakness
execute as @a at @s if score period internal matches 0 unless score @s last_login matches 0 run effect clear @s regeneration
execute as @a at @s if score period internal matches 0 unless score @s last_login matches 0 run effect give @s resistance 9999 255 true
execute as @a at @s if score period internal matches 0 unless score @s last_login matches 0 run gamemode survival @s
execute as @a at @s if score period internal matches 0 unless score @s last_login matches 0 run scoreboard players set @s last_login 0
## 2, main game
execute as @a at @s if score period internal matches 2 unless score @s last_login matches 2 run effect clear @s weakness
execute as @a at @s if score period internal matches 2 unless score @s last_login matches 2 run effect clear @s regeneration
execute as @a at @s if score period internal matches 2 unless score @s last_login matches 2 run effect clear @s resistance
execute as @a at @s if score period internal matches 2 unless score @s last_login matches 2 run gamemode survival @s
execute as @a at @s if score period internal matches 2 unless score @s last_login matches 2 run scoreboard players set @s last_login 2
## 3, victory
execute as @a at @s if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s weakness
execute as @a at @s if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s regeneration
execute as @a at @s if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s resistance
execute as @a at @s if score period internal matches 3 unless score @s last_login matches 3 run gamemode spectator @s
execute as @a at @s if score period internal matches 3 unless score @s last_login matches 3 run scoreboard players set @s last_login 3

# bossbar
execute unless score period internal matches 2 store result bossbar infection:period value run scoreboard players get time_s internal
## -1, pre-start
execute if score period internal matches -1 run bossbar set infection:period color white
execute if score period internal matches -1 run bossbar set infection:period name ["",{"text":"INFECTION","bold":true,"color":"dark_green"},{"text":" \u0020 \u0020The game will start soon..","color":"green"}]
## 0, grace period
execute if score period internal matches 0 store result bossbar infection:period max run scoreboard players get starter_period internal
execute if score period internal matches 0 run bossbar set infection:period color green
execute if score period internal matches 0 run bossbar set infection:period name ["",{"text":"INFECTION","bold":true,"color":"dark_green"},{"text":" \u0020 \u0020Starting period","bold":true,"color":"green"},{"text":", 5 minutes until a random person is infected","color":"green"}]
## 2, main game
execute if score period internal matches 2 run bossbar set infection:period color green
execute if score period internal matches 2 run bossbar set infection:period name ["",{"text":"INFECTION","bold":true,"color":"dark_green"},{"text":" \u0020 \u0020ALIVE:","color":"dark_green"},{"text":" "},{"score":{"name":"alive","objective":"internal"},"bold":true,"color":"green"},{"text":" \u0020 INFECTED:","color":"dark_green"},{"text":" "},{"score":{"name":"infected","objective":"internal"},"bold":true,"color":"green"},{"text":" \u0020 BORDER:","color":"dark_green"},{"text":" "},{"score":{"name":"border","objective":"internal"},"bold":true,"color":"green"}]
execute if score period internal matches 2 store result bossbar infection:period value run scoreboard players get time_s internal
execute if score period internal matches 2 store result bossbar infection:period max run scoreboard players get victory_timeout internal
## 3, victory
execute if score period internal matches 3 run bossbar set infection:period color green
execute if score period internal matches 3 run bossbar set infection:period name ["",{"text":"INFECTION","bold":true,"color":"dark_green"},{"text":" \u0020 \u0020The game has ended!","color":"green"}]
execute if score period internal matches 3 run bossbar set infection:period max 1
execute if score period internal matches 3 run bossbar set infection:period value 1

# end starter period
execute if score time_s internal >= starter_period internal if score period internal matches 0 run function infection:main_game

# worldborder
execute store result score border internal run worldborder get