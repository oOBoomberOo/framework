data modify entity @s DeathLootTable set from storage boomber:framework/furniture_table/cashier input.ucit.framework.item
loot spawn ~ ~ ~ kill @s
data modify entity @e[type=item, sort=nearest, limit=1] PickupDelay set value 0s

tp @s ~ ~-1000 ~
data merge entity @s {Health: 0.0f, DeathTime: 19s}