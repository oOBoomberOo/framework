#> If item exists but it's not ui_item append it to drop_items array
execute if data block ~ ~ ~ Items[{Slot: 8b}].Count unless data block ~ ~ ~ Items[{Slot: 8b}].tag{ucit: {group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 8b}]
execute if data block ~ ~ ~ Items[{Slot: 26b}].Count unless data block ~ ~ ~ Items[{Slot: 26b}].tag{ucit: {group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 26b}]

#> Get page number
execute store result score #bb.fw.page bb.calculation run data get entity @s ArmorItems[-1].tag.ucit.framework.selected_page
scoreboard players operation #bb.fw.previous_page bb.calculation = #bb.fw.page bb.calculation
scoreboard players operation #bb.fw.next_page bb.calculation = #bb.fw.page bb.calculation
scoreboard players add #bb.fw.next_page bb.calculation 2

scoreboard players operation #bb.fw.capped_previous_page bb.calculation = #bb.fw.previous_page bb.calculation
scoreboard players operation #bb.fw.capped_next_page bb.calculation = #bb.fw.next_page bb.calculation

#> Prevent from rendering item count that can't be physically render
execute if score #bb.fw.previous_page bb.calculation matches ..0 run scoreboard players set #bb.fw.capped_previous_page bb.calculation 1
execute if score #bb.fw.next_page bb.calculation matches 65.. run scoreboard players set #bb.fw.capped_next_page bb.calculation 64

execute if score #bb.fw.page bb.calculation matches 0 run loot replace block ~ ~ ~ container.8 loot boomber:framework/trait/furniture_table/ui/no_action_button
execute if score #bb.fw.page bb.calculation matches 1.. run loot replace block ~ ~ ~ container.8 loot boomber:framework/trait/furniture_table/ui/previous_button
#> Store #bb.fw.previous_page into item count
execute store result block ~ ~ ~ Items[{Slot: 8b}].Count byte 1 run scoreboard players get #bb.fw.capped_previous_page bb.calculation

execute store result score #bb.fw.page_size bb.calculation run data get storage boomber:framework/furniture_table furniture_list
scoreboard players remove #bb.fw.page_size bb.calculation 1

execute if score #bb.fw.page bb.calculation < #bb.fw.page_size bb.calculation run loot replace block ~ ~ ~ container.26 loot boomber:framework/trait/furniture_table/ui/next_button
execute if score #bb.fw.page bb.calculation >= #bb.fw.page_size bb.calculation run loot replace block ~ ~ ~ container.26 loot boomber:framework/trait/furniture_table/ui/no_action_button
#> Store #bb.fw.next_page into item count
execute store result block ~ ~ ~ Items[{Slot: 26b}].Count byte 1 run scoreboard players get #bb.fw.capped_next_page bb.calculation

#> At this point `tag.display.Name` is guarantee to be available so there's no point in checking for it
data modify storage boomber:framework/furniture_table page_slot.previous set from block ~ ~ ~ Items[{Slot: 8b}].tag.display.Name
data modify storage boomber:framework/furniture_table page_slot.next set from block ~ ~ ~ Items[{Slot: 26b}].tag.display.Name

#> Usual string concatination
setblock ~ 255 ~ minecraft:oak_sign{Text1: '[{"storage": "boomber:framework/furniture_table", "nbt": "page_slot.previous", "interpret": true}, {"text": " #"}, {"score": {"name": "#bb.fw.previous_page", "objective": "bb.calculation"}}]', Text2: '[{"storage": "boomber:framework/furniture_table", "nbt": "page_slot.next", "interpret": true}, {"text": " #"}, {"score": {"name": "#bb.fw.next_page", "objective": "bb.calculation"}}]'}

#> Only store the result string if it's an active button
execute if score #bb.fw.page bb.calculation matches 1.. run data modify block ~ ~ ~ Items[{Slot: 8b}].tag.display.Name set from block ~ 255 ~ Text1
execute if score #bb.fw.page bb.calculation < #bb.fw.page_size bb.calculation run data modify block ~ ~ ~ Items[{Slot: 26b}].tag.display.Name set from block ~ 255 ~ Text2

setblock ~ 255 ~ minecraft:air