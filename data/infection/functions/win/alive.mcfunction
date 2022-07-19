# INFECTION alive victory


scoreboard players set period internal 3
gamemode spectator @a[team=infected]
gamemode adventure @a[team=alive]

# announce
title @a title {"text":"SURVIVORS WIN!","color":"green","bold":true}
title @a subtitle [{"text":"The infected failed to infect everyone in time.."}]
# sfx
execute as @a at @s if score sound_effects global matches 1 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~
# effects
effect give @a resistance 9999 255 true
execute as @a at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;5631086],FadeColors:[I;632656]}]}}}}

# reset
scoreboard players reset alive internal
scoreboard players reset infected internal