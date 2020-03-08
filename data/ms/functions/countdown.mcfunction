execute if score $countdown Global matches 5 run playsound ui.button.click ambient @a ~ ~ ~ 1 1.3 1
execute if score $countdown Global matches 5 run title @a times 0 20 0
execute if score $countdown Global matches 5 run title @a title [{"text":"5","color":"gold","bold":true}]

execute if score $countdown Global matches 4 run playsound ui.button.click ambient @a ~ ~ ~ 1 1.3 1
execute if score $countdown Global matches 4 run title @a times 0 20 0
execute if score $countdown Global matches 4 run title @a title [{"text":"4","color":"gold","bold":true}]

execute if score $countdown Global matches 3 run playsound ui.button.click ambient @a ~ ~ ~ 1 1.3 1
execute if score $countdown Global matches 3 run title @a times 0 20 0
execute if score $countdown Global matches 3 run title @a title [{"text":"3","color":"gold","bold":true}]

execute if score $countdown Global matches 2 run playsound ui.button.click ambient @a ~ ~ ~ 1 1.3 1
execute if score $countdown Global matches 2 run title @a times 0 20 0
execute if score $countdown Global matches 2 run title @a title [{"text":"2","color":"gold","bold":true}]

execute if score $countdown Global matches 1 run playsound ui.button.click ambient @a ~ ~ ~ 1 1.3 1
execute if score $countdown Global matches 1 run title @a times 0 20 0
execute if score $countdown Global matches 1 run title @a title [{"text":"1","color":"gold","bold":true}]

execute if score $countdown Global matches 0 run scoreboard players operation $MaterialGlowingTime Global *= $20 Const
execute if score $countdown Global matches 0 run scoreboard players set $isPlay Global 1
execute if score $countdown Global matches 0 run playsound entity.ender_dragon.ambient ambient @a ~ ~ ~ 1 0.9 1
execute if score $countdown Global matches 0 run title @a times 0 20 15
execute if score $countdown Global matches 0 run title @a title [{"text":"START!!","color":"gold","bold":true}]
execute if score $countdown Global matches 0 run fill 1130 26 680 1126 24 680 air destroy

scoreboard players remove $countdown Global 1