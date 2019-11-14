#> Set default values
data modify storage boomber:framework/furniture_table furniture_list set value []
data modify storage boomber:framework/furniture_table current_furniture_list set value []
scoreboard players set #bb.fw.slot bb.variable 0

# This loot table contain many item pools that will drop depend on a certain condition
# These item pools will read score [bb.fw.red_dye, bb.fw.green_dye, bb.fw.blue_dye, bb.fw.clay] and determine if it should be drop
# Using loot table is much faster than using functions but it also result in a lot more hardcoding.
# But I already made a generator for that (☞ﾟヮﾟ)☞
# loot spawn ~ 255 ~ loot boomber:framework/trait/furniture_table/furniture_list

data modify storage boomber:framework/furniture_table draw_camera set from entity @s ArmorItems[-1].tag.ucit.framework.draw_camera
scoreboard players operation #bb.fw.red_dye bb.calculation = @s bb.fw.red_dye
scoreboard players operation #bb.fw.green_dye bb.calculation = @s bb.fw.green_dye
scoreboard players operation #bb.fw.blue_dye bb.calculation = @s bb.fw.blue_dye
scoreboard players operation #bb.fw.clay bb.calculation = @s bb.fw.clay
execute positioned ~ 255 ~ run function boomber:framework/trait/entity/template/loot_table
execute as @e[type=minecraft:husk, tag=boomber.framework.template] run function boomber:framework/trait/furniture_table/ui/call/furniture_machine

#> Select every items that dropped from command above all at once and map it into usable data
execute as @e[type=minecraft:item, nbt={Item: {tag: {ucit: {group: ["furniture_table/selection"], from: "boomber:framework"}}}}] run function boomber:framework/trait/furniture_table/ui/get/furniture_selection

#> Get current page, what else do you expect?
function boomber:framework/trait/furniture_table/ui/get/current_page

#> Copy current_furniture_list to @s->framework.history to prevent the event listener from detecting that the items has change (from nothing -> furniture list)
data modify entity @s ArmorItems[-1].tag.ucit.framework.history set from storage boomber:framework/furniture_table current_furniture_list
#> Cleanup any items that's inside furniture list slots before replace them
function boomber:framework/trait/furniture_table/ui/action/cleanup_furniture_list

#> Actually push furniture list into the container
data modify block ~ ~ ~ Items append from storage boomber:framework/furniture_table current_furniture_list[]