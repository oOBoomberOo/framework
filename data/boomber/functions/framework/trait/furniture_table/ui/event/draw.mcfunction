function boomber:framework/trait/furniture_table/ui/call/dyes

data remove storage boomber:framework/furniture_table drop_items
data remove storage boomber:framework/furniture_table drop_item
data merge storage boomber:framework/furniture_table {drop_items: [], drop_item: {}, previous_list: []}

execute unless data block ~ ~ ~ Items[{Slot: 0b}].Count run loot replace block ~ ~ ~ container.0 loot boomber:framework/trait/furniture_table/ui/red_dye_slot
execute unless data block ~ ~ ~ Items[{Slot: 9b}].Count run loot replace block ~ ~ ~ container.9 loot boomber:framework/trait/furniture_table/ui/green_dye_slot
execute unless data block ~ ~ ~ Items[{Slot: 18b}].Count run loot replace block ~ ~ ~ container.18 loot boomber:framework/trait/furniture_table/ui/blue_dye_slot

execute if data block ~ ~ ~ Items[{Slot: 0b}].tag{ucit: {id: "red_dye_slot", from: "boomber:framework"}} unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 0b, Count: 1b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Count set value 1b
execute if data block ~ ~ ~ Items[{Slot: 9b}].tag{ucit: {id: "green_dye_slot", from: "boomber:framework"}} unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 9b, Count: 1b}]} run data modify block ~ ~ ~ Items[{Slot: 9b}].Count set value 1b
execute if data block ~ ~ ~ Items[{Slot: 18b}].tag{ucit: {id: "blue_dye_slot", from: "boomber:framework"}} unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 18b, Count: 1b}]} run data modify block ~ ~ ~ Items[{Slot: 18b}].Count set value 1b

execute if data block ~ ~ ~ Items[{Slot: 1b}].Count unless data block ~ ~ ~ Items[{Slot: 1b}].tag{ucit: {group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 1b}]
execute if data block ~ ~ ~ Items[{Slot: 10b}].Count unless data block ~ ~ ~ Items[{Slot: 10b}].tag{ucit: {group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 10b}]
execute if data block ~ ~ ~ Items[{Slot: 19b}].Count unless data block ~ ~ ~ Items[{Slot: 19b}].tag{ucit: {group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 19b}]

loot replace block ~ ~ ~ container.1 loot boomber:framework/trait/furniture_table/ui/blank_slot
loot replace block ~ ~ ~ container.10 loot boomber:framework/trait/furniture_table/ui/blank_slot
loot replace block ~ ~ ~ container.19 loot boomber:framework/trait/furniture_table/ui/blank_slot

function boomber:framework/trait/furniture_table/ui/event/furniture_list

execute if data storage boomber:framework/furniture_table drop_items[] run function boomber:framework/trait/furniture_table/ui/event/drop_items
playsound minecraft:block.note_block.harp voice @a
execute as @a[distance=..7] run function boomber:framework/trait/furniture_table/ui/call/player/cleanup