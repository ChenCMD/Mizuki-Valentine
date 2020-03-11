tag @a[advancements={ms:ondamage=true}] add Target

function ms:rng/generation
scoreboard players operation @s Random %= $4 Const

execute if score @s Random matches 0 run clear @a[tag=Target] sugar{ChocolateType:1b} 1
execute if score @s Random matches 0 run effect clear @a[tag=Target] glowing
execute if score @s Random matches 0 run team join Player @a[tag=Target]

execute if score @s Random matches 0 run loot spawn ~ ~ ~ loot ms:chocolate/drop/high-grade
execute if score @s Random matches 0 as @e[type=item,nbt={Item:{tag:{nowDrop:1b}}}] run data modify entity @s PickupDelay set value 30s
execute if score @s Random matches 0 as @e[type=item,nbt={Item:{tag:{nowDrop:1b}}}] run data modify entity @s Item.tag.nowDrop set value 0b

tag @a remove Target