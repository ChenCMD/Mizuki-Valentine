execute if entity @e[type=item,nbt={Item:{tag:{SpawnChocoType:0b}}}] run tellraw @s [{"text":"DummyChoco","color":"gold"},{"text":": ","color":"white"},{"text":"true","color":"green"}]
execute unless entity @e[type=item,nbt={Item:{tag:{SpawnChocoType:0b}}}] run tellraw @s [{"text":"DummyChoco","color":"gold"},{"text":": ","color":"white"},{"text":"false","color":"red"}]

execute if entity @e[type=item,nbt={Item:{tag:{SpawnChocoType:1b}}}] run tellraw @s [{"text":"FavoriteChoco","color":"gold"},{"text":": ","color":"white"},{"text":"true","color":"green"}]
execute unless entity @e[type=item,nbt={Item:{tag:{SpawnChocoType:1b}}}] run tellraw @s [{"text":"FavoriteChoco","color":"gold"},{"text":": ","color":"white"},{"text":"false","color":"red"}]

execute if entity @a[team=HaveChocolate,gamemode=adventure] run tellraw @s [{"text":"HaveChocolatePlayer","color":"gold"},{"text":": ","color":"white"},{"text":"true","color":"green"}]
execute unless entity @a[team=HaveChocolate,gamemode=adventure] run tellraw @s [{"text":"HaveChocolatePlayer","color":"gold"},{"text":": ","color":"white"},{"text":"false","color":"green"}]