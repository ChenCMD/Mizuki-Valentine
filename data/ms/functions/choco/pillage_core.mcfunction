tag @a[advancements={ms:ondamage=true}] add Target
execute store result score $registChocoCount Global run clear @a[tag=Target] sugar{Choco:1b} 0
function ms:rng/generation
scoreboard players operation @s Random %= $registChocoCount Global
execute if score @s Random matches 0 run clear @a[tag=Target] sugar{ChocoType:1b} 1
execute if score @s Random matches 0 run effect clear @a[tag=Target] glowing
execute if score @s Random matches 0 run team join Player @a[tag=Target]
execute if score @s Random matches 0 run loot spawn ~ ~ ~ loot ms:choco/drop_favorite
execute if score @s Random matches 1.. run clear @a[tag=Target] sugar{ChocoType:0b} 1
execute if score @s Random matches 1.. run loot spawn ~ ~ ~ loot ms:choco/drop_dummy
execute as @e[type=item,nbt={Item:{tag:{nowDrop:1b}}}] run data modify entity @s PickupDelay set value 30s
execute as @e[type=item,nbt={Item:{tag:{nowDrop:1b}}}] run data modify entity @s Item.tag.nowDrop set value 0b
tag @a remove Target