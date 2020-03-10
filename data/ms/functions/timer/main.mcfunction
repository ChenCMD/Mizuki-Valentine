scoreboard players remove $Timer Global 1
execute store result bossbar ms:timer value run scoreboard players get $Timer Global
scoreboard players operation $temp:Timer Global = $Timer Global
scoreboard players operation $temp:Timer Global %= $30 Const
execute if score $Timer Global matches 1.. if score $temp:Timer Global matches 0 run tellraw @a [{"text":"新しいチョコが配置された！","color":"gold"}]
execute if score $Timer Global matches 1.. if score $temp:Timer Global matches 0 run function ms:material/spawn/spawn
execute if score $Timer Global matches 60 as @e[tag=!alreadySpawn,limit=1,tag=MaterialCandidate,sort=random] at @s run function ms:material/spawn/high-grade
execute if score $Timer Global matches 1.. run schedule function ms:timer/main 1s
execute if score $Timer Global matches 0 run function ms:end