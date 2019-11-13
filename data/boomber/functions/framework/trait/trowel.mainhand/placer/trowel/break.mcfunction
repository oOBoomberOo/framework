setblock ~ 255 ~ minecraft:shulker_box
data modify block ~ 255 ~ Items append from storage boomber:framework/trowel.mainhand return_item.tag.ucit.framework.inventory[]
loot spawn ~ ~ ~ mine ~ 255 ~ minecraft:iron_pickaxe{ucit: {id: "inventory_modifier"}}
setblock ~ 255 ~ minecraft:air

playsound minecraft:item.shield.break player @a ~ ~ ~

data modify storage boomber:framework/trowel.mainhand return_item.Count set value 0b