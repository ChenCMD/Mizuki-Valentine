execute if entity @e[type=item,nbt={Item:{tag:{SpawnMaterialType:0b}}}] run tellraw @s [{"text":"DummyMaterial","color":"gold"},{"text":": ","color":"white"},{"text":"true","color":"green"}]
execute unless entity @e[type=item,nbt={Item:{tag:{SpawnMaterialType:0b}}}] run tellraw @s [{"text":"DummyMaterial","color":"gold"},{"text":": ","color":"white"},{"text":"false","color":"red"}]

execute if entity @e[type=item,nbt={Item:{tag:{SpawnMaterialType:1b}}}] run tellraw @s [{"text":"FavoriteMaterial","color":"gold"},{"text":": ","color":"white"},{"text":"true","color":"green"}]
execute unless entity @e[type=item,nbt={Item:{tag:{SpawnMaterialType:1b}}}] run tellraw @s [{"text":"FavoriteMaterial","color":"gold"},{"text":": ","color":"white"},{"text":"false","color":"red"}]

execute if entity @a[team=HaveMateriallate,gamemode=adventure] run tellraw @s [{"text":"HaveMateriallatePlayer","color":"gold"},{"text":": ","color":"white"},{"text":"true","color":"green"}]
execute unless entity @a[team=HaveMateriallate,gamemode=adventure] run tellraw @s [{"text":"HaveMateriallatePlayer","color":"gold"},{"text":": ","color":"white"},{"text":"false","color":"green"}]