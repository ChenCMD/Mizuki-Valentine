clear @s sugar{SpawnMaterialType:1b}

team join HaveMaterial

execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 2 0
tellraw @a [{"selector":"@s"},{"text":"が${0:highGradeMatName}を手に入れた！","color":"gold"}]

loot give @s loot ms:material/get/high-grade

effect clear @s glowing
effect give @s glowing 999999 0 true

advancement revoke @s only ms:onpickupitem/high-grade