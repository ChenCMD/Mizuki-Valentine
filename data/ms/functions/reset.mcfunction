gamemode adventure @a[tag=!NoPlay]
team empty HaveChocolate
team empty Player
tag @e[tag=chocolateCandidate] remove spawnChoco
clear @a
effect clear @a
kill @e[type=item]
schedule clear ms:timer/main
bossbar set ms:timer players
fill 1130 25 680 1126 24 680 orange_stained_glass_pane[east=true,west=true]
difficulty peaceful