title @a times 0 30 30
title @a title {"text":"GAME END","color":"red","bold":true}
scoreboard players set $isPlay Global -1
scoreboard players operation $ChocoGlowingTime Global /= $20 Const
kill @e[type=item]
fill 1130 26 680 1126 24 680 orange_stained_glass_pane[east=true,west=true]
schedule function ms:end2 60t