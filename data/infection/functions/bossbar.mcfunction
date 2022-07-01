# INFECTION STATUS BOSSBAR


# Initial value
execute if score period internal matches -1 run bossbar set infection:period color white
execute if score period internal matches -1 run bossbar set infection:period name ["",{"text":"INFECTION","bold":true,"color":"dark_green"},{"text":" \u0020 \u0020The game will start soon..","color":"green"}]
# Starter period
execute if score period internal matches 0 store result bossbar infection:period max run scoreboard players get starter_period internal
execute if score period internal matches 0 run bossbar set infection:period color green
execute if score period internal matches 0 run bossbar set infection:period name ["",{"text":"INFECTION","bold":true,"color":"dark_green"},{"text":" \u0020 \u0020Starting period","bold":true,"color":"green"},{"text":", 8 minutes until a random person is infected","color":"green"}]
# Main game
execute if score period internal matches 2 run bossbar set infection:period color green
execute if score period internal matches 2 run bossbar set infection:period name ["",{"text":"INFECTION","bold":true,"color":"dark_green"},{"text":" \u0020 \u0020ALIVE:","color":"dark_green"},{"text":" "},{"score":{"name":"alive","objective":"internal"},"bold":true,"color":"green"},{"text":" \u0020 INFECTED:","color":"dark_green"},{"text":" "},{"score":{"name":"infected","objective":"internal"},"bold":true,"color":"green"},{"text":" \u0020 BORDER:","color":"dark_green"},{"text":" "},{"score":{"name":"border","objective":"time"},"bold":true,"color":"green"}]
execute if score period internal matches 2 store result bossbar infection:period value run scoreboard players get time_s internal
execute if score period internal matches 2 store result bossbar infection:period max run scoreboard players get victory_timeout time
# Victory/game end
execute if score period internal matches 3 run bossbar set infection:period color green
execute if score period internal matches 3 run bossbar set infection:period name ["",{"text":"INFECTION","bold":true,"color":"dark_green"},{"text":" \u0020 \u0020The game has ended!","color":"green"}]
execute if score period internal matches 3 run bossbar set infection:period max 1
execute if score period internal matches 3 run bossbar set infection:period value 1