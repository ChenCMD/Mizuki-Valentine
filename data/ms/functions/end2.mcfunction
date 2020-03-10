execute as @a[tag=!NotPlay] store result score @s Point run clear @a sugar{Material:1b}
scoreboard players add @a[team=HaveMaterial,tag=!NotPlay] Point 10
scoreboard players add @a[gamemode=spectator,tag=!NotPlay] Point 5

scoreboard players operation $1 Point > @a[tag=!NotPlay] Point
execute as @a[tag=!NotPlay] if score @s Point = $1 Point run tag @s add Pointer1

scoreboard players operation $2 Point > @a[tag=!NotPlay,tag=!Pointer1] Point
execute as @a[tag=!NotPlay,tag=!Pointer1] if score @s Point = $2 Point run tag @s add Pointer2

scoreboard players operation $3 Point > @a[tag=!NotPlay,tag=!Pointer1,tag=!Pointer2] Point
execute as @a[tag=!NotPlay,tag=!Pointer1,tag=!Pointer2] if score @s Point = $3 Point run tag @s add Pointer3

execute if entity @a[tag=Pointer1] run tellraw @a [{"text":"1. ","color":"yellow","bold":true},{"selector":"@a[tag=Pointer1]","bold":false},{"text":": ","color":"white","bold":false},{"score":{"name":"@a[tag=Pointer1]","objective":"Point"},"color":"aqua","bold":false},{"text":"points","color":"aqua","bold":false}]
execute if entity @a[tag=Pointer2] run tellraw @a [{"text":"2. ","color":"gray","bold":true},{"selector":"@a[tag=Pointer2]","bold":false},{"text":": ","color":"white","bold":false},{"score":{"name":"@a[tag=Pointer2]","objective":"Point"},"color":"aqua","bold":false},{"text":"points","color":"aqua","bold":false}]
execute if entity @a[tag=Pointer3] run tellraw @a [{"text":"3. ","color":"gold","bold":true},{"selector":"@a[tag=Pointer3]","bold":false},{"text":": ","color":"white","bold":false},{"score":{"name":"@a[tag=Pointer3]","objective":"Point"},"color":"aqua","bold":false},{"text":"points","color":"aqua","bold":false}]

scoreboard players reset @a Point

tag @a remove Pointer1
tag @a remove Pointer2
tag @a remove Pointer3
scoreboard players reset $1 Point
scoreboard players reset $2 Point
scoreboard players reset $3 Point