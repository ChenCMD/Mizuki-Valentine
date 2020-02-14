scoreboard players operation $Rand_X Random += $Rand_Modifier Random
scoreboard players operation $Rand_X Random *= $Rand_A Random
scoreboard players operation $Rand_X Random %= $Rand_M Random
scoreboard players operation @s Random = $Rand_X Random
scoreboard players add $RandUseCount Random 1
execute if score $RandUseCount Random matches 10.. at @s positioned ~ ~200 ~ run function ms:rng/modifier_gene