team join HaveChocolate
execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 2 0
tellraw @a [{"selector":"@s"},{"text":"が本命チョコを手に入れた！","color":"gold"}]
loot give @s loot ms:choco/favorite
effect clear @s glowing
effect give @s glowing 999999 0 true