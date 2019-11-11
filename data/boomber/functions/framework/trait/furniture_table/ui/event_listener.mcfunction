scoreboard players set #bb.fw.should_draw bb.success 0

execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/empty_dye_slot
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/filled_dye_slot

#> Check if each slots is != 1
execute unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 1b, Count: 1b}]} run scoreboard players add #bb.fw.should_draw bb.success 1
execute unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 10b, Count: 1b}]} run scoreboard players add #bb.fw.should_draw bb.success 1
execute unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 19b, Count: 1b}]} run scoreboard players add #bb.fw.should_draw bb.success 1

execute if data block ~ ~ ~ Items[{Slot: 1b}].Count unless data block ~ ~ ~ Items[{Slot: 1b}].tag{ucit: {id: "blank_slot", from: "boomber:framework"}} run scoreboard players add #bb.fw.should_draw bb.success 1
execute if data block ~ ~ ~ Items[{Slot: 10b}].Count unless data block ~ ~ ~ Items[{Slot: 10b}].tag{ucit: {id: "blank_slot", from: "boomber:framework"}} run scoreboard players add #bb.fw.should_draw bb.success 1
execute if data block ~ ~ ~ Items[{Slot: 19b}].Count unless data block ~ ~ ~ Items[{Slot: 19b}].tag{ucit: {id: "blank_slot", from: "boomber:framework"}} run scoreboard players add #bb.fw.should_draw bb.success 1

execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/has_furniture_change

execute if score #bb.fw.should_draw bb.success matches 1.. run function boomber:framework/trait/furniture_table/ui/event/draw