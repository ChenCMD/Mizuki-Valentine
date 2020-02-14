function ms:rng/generation
scoreboard players operation @s Random %= $2 Const
execute if score @s Random matches 0 run tellraw @s [{"text":"これは友チョコだ...","color":"gold"}]
execute if score @s Random matches 0 run loot give @s loot ms:choco/dummy1
execute if score @s Random matches 1 run tellraw @s [{"text":"これは義理チョコだ...","color":"gold"}]
execute if score @s Random matches 1 run loot give @s loot ms:choco/dummy2