data modify storage boomber:framework/furniture_table previous_list set value []
data modify storage boomber:framework/furniture_table furniture_list set value []
data modify storage boomber:framework/furniture_table current_furniture_list set value []
loot spawn ~ 255 ~ loot boomber:framework/trait/furniture_table/furniture_list

scoreboard players set #bb.fw.slot bb.variable 0
execute as @e[type=minecraft:item, nbt={Item: {tag: {ucit: {id: "furniture_selection", from: "boomber:framework"}}}}] run function boomber:framework/trait/furniture_table/ui/get/furniture_selection
data modify storage boomber:framework/furniture_table current_furniture_list set from storage boomber:framework/furniture_table furniture_list[0]

function boomber:framework/trait/furniture_table/ui/get/current_page

data modify storage boomber:framework/furniture_table previous_list set from storage boomber:framework/furniture_table current_furniture_list
function boomber:framework/trait/furniture_table/ui/draw/cleanup_furniture_list

data modify block ~ ~ ~ Items append from storage boomber:framework/furniture_table current_furniture_list[]