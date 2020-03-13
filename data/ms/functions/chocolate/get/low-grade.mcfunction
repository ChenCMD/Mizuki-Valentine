function ms:rng/generation
scoreboard players operation @s Random %= $3 Const

tellraw @s [{"text":"これは普通のお返しチョコだ...","color":"gold"}]

execute if score @s Random matches 0 run loot give @s loot ms:chocolate/get/low-grade1
execute if score @s Random matches 1 run loot give @s loot ms:chocolate/get/low-grade2
execute if score @s Random matches 2 run loot give @s loot ms:chocolate/get/low-grade3

scoreboard players remove $temp:Clear Global 1
execute if score $temp:Clear Global matches 0 run scoreboard players reset $temp:Clear Global
execute if score $temp:Clear Global matches 1.. run function ms:chocolate/get/low-grade