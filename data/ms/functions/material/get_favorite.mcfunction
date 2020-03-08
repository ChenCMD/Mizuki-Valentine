team join HaveMateriallate
execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 2 0
tellraw @a [{"selector":"@s"},{"text":"が高級なチョコ素材を手に入れた！","color":"gold"}]
loot give @s loot ms:material/favorite
effect clear @s glowing
effect give @s glowing 999999 0 true