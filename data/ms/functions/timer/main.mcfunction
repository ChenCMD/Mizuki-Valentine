scoreboard players remove $Timer Global 1
execute store result bossbar ms:timer value run scoreboard players get $Timer Global
scoreboard players operation $temp:Timer Global = $Timer Global
scoreboard players operation $temp:Timer Global %= $30 Const
execute if score $Timer Global matches 1.. if score $temp:Timer Global matches 0 run tellraw @a [{"text":"新しいチョコが配置された！","color":"gold"}]
execute if score $Timer Global matches 1.. if score $temp:Timer Global matches 0 run function ms:chocolate/spawn/spawn
execute if score $Timer Global matches 1.. run schedule function ms:timer/main 1s
execute if score $Timer Global matches ..90 run data merge entity @e[nbt={Item:{tag:{SpawnChocolatetype:1b}}},limit=1,type=item] {Glowing:1b}
execute if score $Timer Global matches 90 run tellraw @a [{"text":"高級なチョコが発光し始めた!?","color":"gold"}]
execute if score $Timer Global matches 60 run tellraw @a [{"text":"チョコを持ち帰ることが可能になった！","color":"gold"}]
execute if score $Timer Global matches 0 run function ms:end
