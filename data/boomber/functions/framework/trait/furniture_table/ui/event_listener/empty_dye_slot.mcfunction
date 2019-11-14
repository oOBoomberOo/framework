#> Check if each slots is empty
execute unless data block ~ ~ ~ Items[{Slot: 0b}].Count run function boomber:framework/trait/furniture_table/ui/event/interact/remove
execute unless data block ~ ~ ~ Items[{Slot: 9b}].Count run function boomber:framework/trait/furniture_table/ui/event/interact/remove
execute unless data block ~ ~ ~ Items[{Slot: 17b}].Count run function boomber:framework/trait/furniture_table/ui/event/interact/remove
execute unless data block ~ ~ ~ Items[{Slot: 18b}].Count run function boomber:framework/trait/furniture_table/ui/event/interact/remove

#> If slot is ui/slot and its count is not 1
execute if data block ~ ~ ~ Items[{Slot: 0b}].tag{ucit: {id: "red_dye_slot", from: "boomber:framework"}} unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 0b, Count: 1b}]} run function boomber:framework/trait/furniture_table/ui/event/interact/unknown
execute if data block ~ ~ ~ Items[{Slot: 9b}].tag{ucit: {id: "green_dye_slot", from: "boomber:framework"}} unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 9b, Count: 1b}]} run function boomber:framework/trait/furniture_table/ui/event/interact/unknown
execute if data block ~ ~ ~ Items[{Slot: 18b}].tag{ucit: {id: "blue_dye_slot", from: "boomber:framework"}} unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 18b, Count: 1b}]} run function boomber:framework/trait/furniture_table/ui/event/interact/unknown
execute if data block ~ ~ ~ Items[{Slot: 17b}].tag{ucit: {id: "clay_slot", from: "boomber:framework"}} unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 17b, Count: 1b}]} run function boomber:framework/trait/furniture_table/ui/event/interact/unknown