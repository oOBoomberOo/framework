function boomber:framework/trait/trowel.offhand/init/inventory_recorder
function boomber:framework/trait/trowel.offhand/init/inventory_remover

setblock ~ 255 ~ minecraft:shulker_box

#> Replace player's hotbar with items inside the trowel's inventory
data modify block ~ 255 ~ Items set from entity @s Inventory[{Slot: -106b}].tag.ucit.framework.inventory
loot replace entity @s hotbar.0 9 mine ~ 255 ~ minecraft:iron_pickaxe{ucit: {id: "inventory_modifier"}}

#> Store player's hotbar into the trowel item
data modify storage boomber:framework/trowel.offhand setter set value []
data modify storage boomber:framework/trowel.offhand setter append from entity @s Inventory[{Slot: -106b}]
data modify storage boomber:framework/trowel.offhand setter[0].Slot set value 0b
data modify storage boomber:framework/trowel.offhand setter[0].tag.ucit.framework.player_inventory set from storage boomber:framework/trowel.offhand player_hotbar
data modify block ~ 255 ~ Items set from storage boomber:framework/trowel.offhand setter
loot replace entity @s weapon.offhand 1 mine ~ 255 ~ minecraft:iron_pickaxe{ucit: {id: "inventory_modifier"}}

setblock ~ 255 ~ minecraft:air

tag @s add boomber.framework.trait.trowel.offhand.init