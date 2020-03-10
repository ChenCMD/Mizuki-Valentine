team join Player @a[tag=!NotPlay]

clear @a[team=Player]
tp @a[team=Player] 1128.5 24.1 684.5 180 0
gamemode adventure @a[team=Player]
bossbar set ms:timer players @a
bossbar set ms:timer value 180
scoreboard players set $Timer Global 180

scoreboard players set $countdown Global 5
schedule function ms:countdown 1s replace
schedule function ms:countdown 2s append
schedule function ms:countdown 3s append
schedule function ms:countdown 4s append
schedule function ms:countdown 5s append
schedule function ms:countdown 6s append

schedule function ms:timer/main 6s replace
function ms:material/spawn/spawn
execute as @e[tag=!alreadySpawn,limit=1,tag=MaterialCandidate,sort=random] at @s run function ms:material/spawn/high-grade