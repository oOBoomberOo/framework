#> Set default values
data modify storage boomber:framework/furniture_table previous_list set value []
data modify storage boomber:framework/furniture_table furniture_list set value []
data modify storage boomber:framework/furniture_table current_furniture_list set value []
scoreboard players set #bb.fw.slot bb.variable 0

#> This loot table contain many item pools that will drop depend on a certain condition
# These item pools will read score [bb.fw.red_dye, bb.fw.green_dye, bb.fw.blue_dye, bb.fw.clay] and determine if it should be drop
# Using loot table is much faster than using functions but it also result in a lot more hardcoding.
# But I already made a generator for that (☞ﾟヮﾟ)☞
loot spawn ~ 255 ~ loot boomber:framework/trait/furniture_table/furniture_list

#> Select every items that dropped from command above all at once and map it into usable data
execute as @e[type=minecraft:item, nbt={Item: {tag: {ucit: {id: "furniture_selection", from: "boomber:framework"}}}}] run function boomber:framework/trait/furniture_table/ui/get/furniture_selection

# data modify storage boomber:framework/furniture_table current_furniture_list set from storage boomber:framework/furniture_table furniture_list[0]

#> Get current page, what else do you expect?
function boomber:framework/trait/furniture_table/ui/get/current_page

#> Copy current_furniture_list to previous_list to prevent the event listener from detecting that the items has change (from nothing -> furniture list)
data modify storage boomber:framework/furniture_table previous_list set from storage boomber:framework/furniture_table current_furniture_list
#> Cleanup any items that's inside furniture list slots before replace them
function boomber:framework/trait/furniture_table/ui/action/cleanup_furniture_list

#> Actually push furniture list into the container
data modify block ~ ~ ~ Items append from storage boomber:framework/furniture_table current_furniture_list[]