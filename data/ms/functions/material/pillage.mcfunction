#onAttackで動作
execute if entity @s[team=Player] if entity @a[advancements={ms:ondamage=true},team=HaveMateriallate] run function ms:material/pillage_core

advancement revoke @s only ms:onattack
advancement revoke @a[advancements={ms:ondamage=true}] only ms:ondamage