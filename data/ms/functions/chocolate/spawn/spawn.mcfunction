tag @e[tag=ChocolateCandidate] remove alreadySpawn
scoreboard players operation $lowChocoSpawnCount Global = $setting.lowChocoSpawnCount Global
execute as @e[limit=1,tag=ChocolateCandidate,sort=random] at @s run function ms:chocolate/spawn/low-grade