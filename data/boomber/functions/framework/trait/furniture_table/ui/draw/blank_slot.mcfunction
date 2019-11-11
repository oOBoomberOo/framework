#> If item exists but it's not blank_slot append it to drop_items array
execute if data block ~ ~ ~ Items[{Slot: 1b}].Count unless data block ~ ~ ~ Items[{Slot: 1b}].tag{ucit: {group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 1b}]
execute if data block ~ ~ ~ Items[{Slot: 10b}].Count unless data block ~ ~ ~ Items[{Slot: 10b}].tag{ucit: {group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 10b}]
execute if data block ~ ~ ~ Items[{Slot: 19b}].Count unless data block ~ ~ ~ Items[{Slot: 19b}].tag{ucit: {group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 19b}]

#> Always set it to blank_slot, but after we've already push the item to drop_items array
loot replace block ~ ~ ~ container.1 loot boomber:framework/trait/furniture_table/ui/blank
loot replace block ~ ~ ~ container.10 loot boomber:framework/trait/furniture_table/ui/blank
loot replace block ~ ~ ~ container.19 loot boomber:framework/trait/furniture_table/ui/blank