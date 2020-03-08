gamemode adventure @a[tag=!NoPlay]
team empty HaveMateriallate
team empty Player
tag @e[tag=materiallateCandidate] remove spawnMaterial
clear @a
effect clear @a
kill @e[type=item]
scoreboard players set $GameTime Global 0
fill 1130 25 680 1126 24 680 orange_stained_glass_pane[east=true,west=true]
difficulty peaceful