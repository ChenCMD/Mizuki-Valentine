summon item ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:5,SpawnChocolateType:0b}},Age:-32768s}
tag @s add alreadySpawn
scoreboard players remove $lowChocoSpawnCount Global 1
execute if score $lowChocoSpawnCount Global matches 1.. as @e[tag=!alreadySpawn,limit=1,tag=ChocolateCandidate,sort=random] at @s run function ms:chocolate/spawn/low-grade