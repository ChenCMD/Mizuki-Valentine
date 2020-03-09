summon item ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:5,SpawnMaterialType:0b}},Age:-32768s}
tag @s add alreadySpawn
scoreboard players remove $lowMatSpawnCount Global 1
execute if score $lowMatSpawnCount Global matches 1.. as @e[tag=!alreadySpawn,limit=1,tag=MaterialCandidate,sort=random] at @s run function ms:material/spawn/low-grade