#define tag MaterialCandidate
scoreboard objectives add Global dummy {"text":"global"}
scoreboard objectives add ClearCount dummy {"text":"消去"}
scoreboard objectives add DropMaterial minecraft.dropped:minecraft.sugar {"text":"砂糖投げ検知"}
scoreboard objectives add Random dummy {"text":"乱数生成"}
scoreboard players set $Rand_X Random 1
scoreboard players set $Rand_A Random 48271
scoreboard players set $Rand_M Random 2147483647

team add HaveMaterial
team add Player
team modify HaveMaterial color gold
team modify Player color white
team modify HaveMaterial prefix {"text":"リア充の","color":"gold"}
team modify Player prefix {"text":""}

scoreboard objectives add Const dummy {"text":"定数"}
scoreboard players set $1 Const 1
scoreboard players set $2 Const 2
scoreboard players set $3 Const 3
scoreboard players set $4 Const 4
scoreboard players set $5 Const 5
scoreboard players set $6 Const 6
scoreboard players set $7 Const 7
scoreboard players set $8 Const 8
scoreboard players set $9 Const 9
scoreboard players set $10 Const 10
scoreboard players set $15 Const 15
scoreboard players set $20 Const 20
scoreboard players set $25 Const 25
scoreboard players set $30 Const 30
scoreboard players set $35 Const 35
scoreboard players set $40 Const 40
scoreboard players set $45 Const 45
scoreboard players set $50 Const 50
scoreboard players set $55 Const 55
scoreboard players set $60 Const 60
scoreboard players set $65 Const 65
scoreboard players set $70 Const 70
scoreboard players set $75 Const 75
scoreboard players set $80 Const 80
scoreboard players set $85 Const 85
scoreboard players set $90 Const 90
scoreboard players set $95 Const 95
scoreboard players set $100 Const 100
scoreboard players set $150 Const 150
scoreboard players set $200 Const 200
scoreboard players set $250 Const 250
scoreboard players set $300 Const 300
scoreboard players set $350 Const 350
scoreboard players set $400 Const 400
scoreboard players set $450 Const 450
scoreboard players set $500 Const 500
scoreboard players set $550 Const 550
scoreboard players set $600 Const 600
scoreboard players set $650 Const 650
scoreboard players set $700 Const 700
scoreboard players set $750 Const 750
scoreboard players set $800 Const 800
scoreboard players set $850 Const 850
scoreboard players set $900 Const 900
scoreboard players set $950 Const 950
scoreboard players set $1000 Const 1000
scoreboard players set $min Const -2147483648
scoreboard players set $max Const 2147483647