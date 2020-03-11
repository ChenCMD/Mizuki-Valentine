#onAttackで動作
execute if entity @s[team=Player] if entity @a[advancements={ms:ondamage=true},team=HaveChocolate] run function ms:chocolate/pillage_core

advancement revoke @s only ms:onattack
advancement revoke @a[advancements={ms:ondamage=true}] only ms:ondamage