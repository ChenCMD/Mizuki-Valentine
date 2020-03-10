execute as @a[advancements={ms:onpickupitem/low-grade=true}] at @s run function ms:material/get/pre_low-grade
execute as @a[advancements={ms:onpickupitem/high-grade=true}] at @s run function ms:material/get/high-grade

execute as @a[x=1125.5,y=24.0,z=686.5,dx=6,dy=3,dz=0,gamemode=adventure] at @s run function ms:goal

execute if score $isPlay Global matches 1 if entity @a[team=HaveMaterial] run scoreboard players add $ParticleDelay Global 1
execute if score $isPlay Global matches 1 if score $ParticleDelay Global matches 6.. as @a[team=HaveMaterial,gamemode=adventure] at @s run particle happy_villager ~ ~1.5 ~ 0.4 0.1 0.4 1 2 normal @a
execute if score $isPlay Global matches 1 if score $ParticleDelay Global matches 6.. run scoreboard players reset $ParticleDelay Global

execute if score $isPlay Global matches 1 at @a[team=HaveMaterial] run effect give @a[distance=1..,team=!HaveMaterial] speed 1 2 true
effect give @a[nbt=!{ActiveEffects:[{Id:0b}]},team=!] speed 1 0 true

execute as @a[scores={DropMaterial=1..},team=HaveMaterial,nbt=!{Inventory:[{tag:{MaterialType:1b}}]}] run effect clear @s glowing
execute as @a[scores={DropMaterial=1..},team=HaveMaterial,nbt=!{Inventory:[{tag:{MaterialType:1b}}]}] run team join Player
scoreboard players reset @a DropMaterial

execute as @e[type=item,nbt={Item:{tag:{Material:1b,MaterialType:0b}}}] at @s run loot spawn ~ ~ ~ loot ms:material/drop/low-grade
execute as @e[type=item,nbt={Item:{tag:{Material:1b,MaterialType:1b}}}] at @s run loot spawn ~ ~ ~ loot ms:material/drop/high-grade
execute as @e[type=item,nbt={Item:{tag:{nowDrop:1b}}}] run data modify entity @s PickupDelay set value 20s
execute as @e[type=item,nbt={Item:{tag:{nowDrop:1b}}}] run data modify entity @s Item.tag.nowDrop set value 0b
kill @e[type=item,nbt={Item:{tag:{Material:1b}}}]