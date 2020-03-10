tag @e[tag=MaterialCandidate] remove alreadySpawn
scoreboard players operation $lowMatSpawnCount Global = $setting.lowMatSpawnCount Global
execute as @e[limit=1,tag=MaterialCandidate,sort=random] at @s run function ms:material/spawn/low-grade