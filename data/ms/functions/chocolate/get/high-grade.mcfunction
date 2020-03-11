clear @s sugar{SpawnChocolateType:1b}

team join HaveChocolate

execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 2 0
tellraw @a [{"selector":"@s"},{"text":"が${0:highGradeChocoName}を手に入れた！","color":"gold"}]

loot give @s loot ms:chocolate/get/high-grade

effect clear @s glowing
effect give @s glowing 999999 0 true

advancement revoke @s only ms:onpickupitem/high-grade