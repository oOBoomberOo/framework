#> Clear player's hotbar
replaceitem entity @s hotbar.0 minecraft:air
replaceitem entity @s hotbar.1 minecraft:air
replaceitem entity @s hotbar.2 minecraft:air
replaceitem entity @s hotbar.3 minecraft:air
replaceitem entity @s hotbar.4 minecraft:air
replaceitem entity @s hotbar.5 minecraft:air
replaceitem entity @s hotbar.6 minecraft:air
replaceitem entity @s hotbar.7 minecraft:air
replaceitem entity @s hotbar.8 minecraft:air

setblock ~ 255 ~ minecraft:shulker_box

#> Store player's hotbar back to its original state
data modify block ~ 255 ~ Items set from storage boomber:framework/trowel.offhand return_inventory
loot replace entity @s hotbar.0 9 mine ~ 255 ~ minecraft:iron_pickaxe{ucit: {id: "inventory_modifier"}}

setblock ~ 255 ~ minecraft:air