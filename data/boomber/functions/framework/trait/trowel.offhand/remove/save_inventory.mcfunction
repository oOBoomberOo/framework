#> Set default values
data modify storage boomber:framework/trowel.offhand save_inventory set value []
data modify storage boomber:framework/trowel.offhand return_inventory set from entity @s SelectedItem.tag.ucit.framework.player_inventory
function boomber:framework/trait/trowel.offhand/remove/drop_trowel

setblock ~ 255 ~ minecraft:shulker_box

#> Set default values
data modify storage boomber:framework/trowel.offhand offhand set value {}

#> When player press 'F' Trowel will move from slot -106b to SelectedItem
# But item in SelectedItem will also get move to slot -106b
# And that item *should* be store inside trowel's inventory
# But trowel's inventory only accept hotbar so we will need to move that item back to its original slot
# Luckily we already destroy trowel item already so we can just move it back to SelectedItem
data modify storage boomber:framework/trowel.offhand offhand set from entity @s Inventory[{Slot: -106b}]
data modify storage boomber:framework/trowel.offhand offhand.Slot set value 0b
data modify block ~ 255 ~ Items append from storage boomber:framework/trowel.offhand offhand
loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ minecraft:iron_pickaxe{ucit: {id: "inventory_modifier"}}

setblock ~ 255 ~ minecraft:air

#> Saving player's hotbar to trowel
# In this case player's hotbar is trowel inventory NOT their actual hotbar
execute if data entity @s Inventory[{Slot: 0b}].Count run data modify storage boomber:framework/trowel.offhand save_inventory append from entity @s Inventory[{Slot: 0b}]
execute if data entity @s Inventory[{Slot: 1b}].Count run data modify storage boomber:framework/trowel.offhand save_inventory append from entity @s Inventory[{Slot: 1b}]
execute if data entity @s Inventory[{Slot: 2b}].Count run data modify storage boomber:framework/trowel.offhand save_inventory append from entity @s Inventory[{Slot: 2b}]
execute if data entity @s Inventory[{Slot: 3b}].Count run data modify storage boomber:framework/trowel.offhand save_inventory append from entity @s Inventory[{Slot: 3b}]
execute if data entity @s Inventory[{Slot: 4b}].Count run data modify storage boomber:framework/trowel.offhand save_inventory append from entity @s Inventory[{Slot: 4b}]
execute if data entity @s Inventory[{Slot: 5b}].Count run data modify storage boomber:framework/trowel.offhand save_inventory append from entity @s Inventory[{Slot: 5b}]
execute if data entity @s Inventory[{Slot: 6b}].Count run data modify storage boomber:framework/trowel.offhand save_inventory append from entity @s Inventory[{Slot: 6b}]
execute if data entity @s Inventory[{Slot: 7b}].Count run data modify storage boomber:framework/trowel.offhand save_inventory append from entity @s Inventory[{Slot: 7b}]
execute if data entity @s Inventory[{Slot: 8b}].Count run data modify storage boomber:framework/trowel.offhand save_inventory append from entity @s Inventory[{Slot: 8b}]

replaceitem entity @s weapon.offhand minecraft:air

function boomber:framework/trait/trowel.offhand/remove/return_inventory
function boomber:framework/trait/trowel.offhand/remove/finalize_trowel