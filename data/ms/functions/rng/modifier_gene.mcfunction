loot spawn ~ ~ ~ loot ms:rng
execute store result score $Rand_Modifier Random run data get entity @e[type=item,nbt={Item:{tag:{RAND:1b}}},distance=..1,limit=1] Item.tag.AttributeModifiers[0].Amount 100
kill @e[type=item,nbt={Item:{tag:{RAND:1b}}},distance=..3,limit=1]
scoreboard players reset $RandUseCount Random