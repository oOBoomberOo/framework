data modify storage boomber:framework/trowel.mainhand return_item set from entity @s SelectedItem
data modify storage boomber:framework/trowel.mainhand return_item.Slot set value 0b
data modify storage boomber:framework/trowel.mainhand return_item.tag.ucit.framework.inventory set from storage boomber:framework/trowel.mainhand block_list
execute if score #bb.fw.place bb.success matches 1.. run function boomber:framework/trait/trowel.mainhand/placer/trowel/durability

setblock ~ ~ ~ minecraft:shulker_box
data modify block ~ ~ ~ Items append from storage boomber:framework/trowel.mainhand return_item
loot replace entity @s weapon.mainhand 1 mine ~ ~ ~ minecraft:iron_pickaxe{ucit: {id: "inventory_modifier"}}
setblock ~ ~ ~ minecraft:air