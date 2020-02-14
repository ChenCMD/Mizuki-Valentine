execute as @a store result score @s ClearCount run clear @s sugar{SpawnChocoType:1b} 1
execute as @a if score @s ClearCount matches 1.. run function ms:choco/get_favorite
scoreboard players reset @a ClearCount

execute as @a store result score @s ClearCount run clear @s sugar{SpawnChocoType:0b} 1
execute as @a if score @s ClearCount matches 1.. run function ms:choco/get_dummy
scoreboard players reset @a ClearCount

execute as @a[x=1125.5,y=24.0,z=686.5,dx=6,dy=3,dz=0,team=HaveChocolate,gamemode=adventure] at @s run function ms:goal

execute as @a[team=HaveChocolate,gamemode=adventure] at @s run effect give @a[team=Player] speed 1 2 true

execute if score $isPlay Global matches 1 run scoreboard players add $ParticleDelay Global 1
execute if score $isPlay Global matches 1 if score $ParticleDelay Global matches 6.. as @a[team=HaveChocolate,gamemode=adventure] at @s run particle heart ~ ~1.5 ~ 0.4 0.1 0.4 1 1 normal @a
execute if score $isPlay Global matches 1 if score $ParticleDelay Global matches 6.. run scoreboard players reset $ParticleDelay Global

execute as @a[scores={DropChocolate=1..},team=HaveChocolate,nbt=!{Inventory:[{tag:{ChocoType:1b}}]}] run effect clear @s glowing
execute as @a[scores={DropChocolate=1..},team=HaveChocolate,nbt=!{Inventory:[{tag:{ChocoType:1b}}]}] run team join Player
scoreboard players reset @a DropChocolate

execute as @e[type=item,nbt={Item:{tag:{Choco:1b,ChocoType:0b}}}] at @s run loot spawn ~ ~ ~ loot ms:choco/drop_dummy
execute as @e[type=item,nbt={Item:{tag:{Choco:1b,ChocoType:1b}}}] at @s run loot spawn ~ ~ ~ loot ms:choco/drop_favorite
execute as @e[type=item,nbt={Item:{tag:{nowDrop:1b}}}] run data modify entity @s PickupDelay set value 20s
execute as @e[type=item,nbt={Item:{tag:{nowDrop:1b}}}] run data modify entity @s Item.Count set from entity @e[type=item,nbt={Item:{tag:{Choco:1b}}},limit=1,distance=..1,sort=nearest] Item.Count
execute as @e[type=item,nbt={Item:{tag:{nowDrop:1b}}}] run data modify entity @s Item.tag.nowDrop set value 0b
kill @e[type=item,nbt={Item:{tag:{Choco:1b}}}]



execute if score $isPlay Global matches 0 store result score $DisplayChocolateCount Global if entity @a[tag=!NotPlay]
execute if score $isPlay Global matches 0 run scoreboard players operation $DisplayChocolateCount Global -= $NoHaveChocoPlayer Global
execute if score $isPlay Global matches 0 if score $ChocoGlowingTime Global matches ..0 if score $DisplayChocolateCount Global matches ..0 run title @a actionbar [{"text":"Setting - ","color":"white"},{"text":"本命チョコの数","color":"aqua"},{"text":": ","color":"white"},{"score":{"objective":"Global","name":"$DisplayChocolateCount"},"color":"dark_red"},{"text":"個","color":"dark_red"},{"text":"  |  ","color":"white"},{"text":"チョコ発光までの時間","color":"aqua"},{"text":": ","color":"white"},{"text":"無し","color":"light_purple"}]
execute if score $isPlay Global matches 0 if score $ChocoGlowingTime Global matches 1.. if score $DisplayChocolateCount Global matches ..0 run title @a actionbar [{"text":"Setting - ","color":"white"},{"text":"本命チョコの数","color":"aqua"},{"text":": ","color":"white"},{"score":{"objective":"Global","name":"$DisplayChocolateCount"},"color":"dark_red"},{"text":"個","color":"dark_red"},{"text":"  |  ","color":"white"},{"text":"チョコ発光までの時間","color":"aqua"},{"text":": ","color":"white"},{"score":{"objective":"Global","name":"$ChocoGlowingTime"},"color":"light_purple"},{"text":"秒","color":"light_purple"}]
execute if score $isPlay Global matches 0 if score $ChocoGlowingTime Global matches ..0 if score $DisplayChocolateCount Global matches 1.. run title @a actionbar [{"text":"Setting - ","color":"white"},{"text":"本命チョコの数","color":"aqua"},{"text":": ","color":"white"},{"score":{"objective":"Global","name":"$DisplayChocolateCount"},"color":"light_purple"},{"text":"個","color":"light_purple"},{"text":"  |  ","color":"white"},{"text":"チョコ発光までの時間","color":"aqua"},{"text":": ","color":"white"},{"text":"無し","color":"light_purple"}]
execute if score $isPlay Global matches 0 if score $ChocoGlowingTime Global matches 1.. if score $DisplayChocolateCount Global matches 1.. run title @a actionbar [{"text":"Setting - ","color":"white"},{"text":"本命チョコの数","color":"aqua"},{"text":": ","color":"white"},{"score":{"objective":"Global","name":"$DisplayChocolateCount"},"color":"light_purple"},{"text":"個","color":"light_purple"},{"text":"  |  ","color":"white"},{"text":"チョコ発光までの時間","color":"aqua"},{"text":": ","color":"white"},{"score":{"objective":"Global","name":"$ChocoGlowingTime"},"color":"light_purple"},{"text":"秒","color":"light_purple"}]

execute if score $isPlay Global matches 1 if score $GameTime Global <= $ChocoGlowingTime Global run scoreboard players add $GameTime Global 1
execute if score $isPlay Global matches 1 if score $GameTime Global = $ChocoGlowingTime Global as @e[type=item] run data modify entity @s Glowing set value 1b
execute if score $isPlay Global matches 1 if score $GameTime Global = $ChocoGlowingTime Global run tellraw @a [{"text":"チョコが光り始めた!?","color":"yellow"}]