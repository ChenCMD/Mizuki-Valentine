title @a times 0 30 30
title @a title {"text":"GAME END","color":"red","bold":true}
tellraw @a {"text":"ポイントを集計します...","color":"yellow"}
scoreboard players set $isPlay Global -1
kill @e[type=item]
fill 1130 26 680 1126 24 680 orange_stained_glass_pane[east=true,west=true]
schedule function ms:end2 60t