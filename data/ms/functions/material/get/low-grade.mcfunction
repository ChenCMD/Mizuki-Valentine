function ms:rng/generation
scoreboard players operation @s Random %= $3 Const

execute if score @s Random matches 0 run tellraw @s [{"text":"これは${1:lowGradeMatName}だ...","color":"gold"}]
execute if score @s Random matches 1 run tellraw @s [{"text":"これは${2:lowGradeMatName}だ...","color":"gold"}]
execute if score @s Random matches 2 run tellraw @s [{"text":"これは${3:lowGradeMatName}だ...","color":"gold"}]

execute if score @s Random matches 0 run loot give @s loot ms:material/get/low-grade1
execute if score @s Random matches 1 run loot give @s loot ms:material/get/low-grade2
execute if score @s Random matches 1 run loot give @s loot ms:material/get/low-grade3

scoreboard players remove $temp:Clear Global 1
execute if score $temp:Clear Global matches 0 run scoreboard players reset $temp:Clear Global
execute if score $temp:Clear Global matches 1.. run function ms:material/get/low-grade