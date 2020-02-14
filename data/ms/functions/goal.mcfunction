gamemode spectator @s
tellraw @a [{"selector":"@s"},{"text":"が本命チョコを勝ち取った！","color":"gold"}]
summon firework_rocket 1125.5 24.0 686.5 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;5320730],FadeColors:[I;5320730]}],Flight:1b}}}}
summon firework_rocket 1128.5 24.0 686.5 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;5320730],FadeColors:[I;5320730]}],Flight:1b}}}}
summon firework_rocket 1131.5 24.0 686.5 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;5320730],FadeColors:[I;5320730]}],Flight:1b}}}}
effect clear @s

execute if score $ChocoSpawnCount Global matches 0 run function ms:end

execute if score $ChocoSpawnCount Global matches 1.. at @a run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0.5
execute if score $ChocoSpawnCount Global matches 1.. run tellraw @a [{"text":"チョコが配置しなおされた！","color":"yellow"}]
execute if score $ChocoSpawnCount Global matches 1.. run effect clear @a[gamemode=adventure]
execute if score $ChocoSpawnCount Global matches 1.. run kill @e[type=item]
execute if score $ChocoSpawnCount Global matches 1.. run clear @a[gamemode=adventure]
execute if score $ChocoSpawnCount Global matches 1.. run tag @e[tag=chocolateCandidate] remove chocoSpawn
execute if score $ChocoSpawnCount Global matches 1.. run scoreboard players set $GameTime Global 0
execute if score $ChocoSpawnCount Global matches 1.. as @e[sort=random,limit=15,tag=chocolateCandidate] run function ms:choco/spawn_dummy
execute if score $ChocoSpawnCount Global matches 1.. as @e[sort=random,limit=1,tag=chocolateCandidate,tag=!spawnChoco] run function ms:choco/spawn_loop