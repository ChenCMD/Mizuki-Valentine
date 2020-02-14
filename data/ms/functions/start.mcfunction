team join Player @a[tag=!NotPlay]

execute store result score $ChocoSpawnCount Global if entity @a[team=Player]
scoreboard players operation $ChocoSpawnCount Global -= $NoHaveChocoPlayer Global


execute if score $ChocoSpawnCount Global matches ..0 run tellraw @a {"text":"プレイヤーが足りません！","color":"red"}


execute if score $ChocoSpawnCount Global matches 1.. run clear @a[team=Player]
execute if score $ChocoSpawnCount Global matches 1.. run tp @a[team=Player] 1128.5 24.1 684.5 180 0
execute if score $ChocoSpawnCount Global matches 1.. run gamemode adventure @a[team=Player]


execute if score $ChocoSpawnCount Global matches 1.. run scoreboard players set $countdown Global 5
execute if score $ChocoSpawnCount Global matches 1.. run schedule function ms:countdown 1s replace
execute if score $ChocoSpawnCount Global matches 1.. run schedule function ms:countdown 2s append
execute if score $ChocoSpawnCount Global matches 1.. run schedule function ms:countdown 3s append
execute if score $ChocoSpawnCount Global matches 1.. run schedule function ms:countdown 4s append
execute if score $ChocoSpawnCount Global matches 1.. run schedule function ms:countdown 5s append
execute if score $ChocoSpawnCount Global matches 1.. run schedule function ms:countdown 6s append

execute if score $ChocoSpawnCount Global matches 1.. as @e[limit=15,tag=chocolateCandidate,sort=random] run function ms:choco/spawn_dummy
execute if score $ChocoSpawnCount Global matches 1.. as @e[tag=!spawnChoco,limit=1,tag=chocolateCandidate,sort=random] run function ms:choco/spawn_loop