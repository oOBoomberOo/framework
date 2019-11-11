execute if data block ~ ~ ~ Items[{Slot: 8b}].Count unless data block ~ ~ ~ Items[{Slot: 8b}].tag{ucit: {group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 8b}]
execute if data block ~ ~ ~ Items[{Slot: 26b}].Count unless data block ~ ~ ~ Items[{Slot: 26b}].tag{ucit: {group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 26b}]

scoreboard players operation #bb.fw.previous_page bb.calculation = @s bb.fw.page
scoreboard players operation #bb.fw.next_page bb.calculation = @s bb.fw.page
scoreboard players add #bb.fw.next_page bb.calculation 2

execute if score #bb.fw.previous_page bb.calculation matches ..0 run scoreboard players set #bb.fw.previous_page bb.calculation 1

execute if score @s bb.fw.page matches 0 run loot replace block ~ ~ ~ container.8 loot boomber:framework/trait/furniture_table/ui/no_action_button
execute if score @s bb.fw.page matches 1.. run loot replace block ~ ~ ~ container.8 loot boomber:framework/trait/furniture_table/ui/previous_button
execute store result block ~ ~ ~ Items[{Slot: 8b}].Count byte 1 run scoreboard players get #bb.fw.previous_page bb.calculation

execute store result score #bb.fw.page_size bb.calculation run data get storage boomber:framework/furniture_table furniture_list
scoreboard players remove #bb.fw.page_size bb.calculation 1
execute if score @s bb.fw.page < #bb.fw.page_size bb.calculation run loot replace block ~ ~ ~ container.26 loot boomber:framework/trait/furniture_table/ui/next_button
execute if score @s bb.fw.page >= #bb.fw.page_size bb.calculation run loot replace block ~ ~ ~ container.26 loot boomber:framework/trait/furniture_table/ui/no_action_button
execute store result block ~ ~ ~ Items[{Slot: 26b}].Count byte 1 run scoreboard players get #bb.fw.next_page bb.calculation