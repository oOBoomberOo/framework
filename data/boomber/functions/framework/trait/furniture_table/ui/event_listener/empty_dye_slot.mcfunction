#> Check if each slots is empty
execute unless data block ~ ~ ~ Items[{Slot: 0b}].Count run scoreboard players add #bb.fw.should_draw bb.success 1
execute unless data block ~ ~ ~ Items[{Slot: 9b}].Count run scoreboard players add #bb.fw.should_draw bb.success 1
execute unless data block ~ ~ ~ Items[{Slot: 18b}].Count run scoreboard players add #bb.fw.should_draw bb.success 1

#> If slot is ui/slot and slot.Count != 1
execute if data block ~ ~ ~ Items[{Slot: 0b}].tag{ucit: {id: "red_dye_slot", from: "boomber:framework"}} unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 0b, Count: 1b}]} run scoreboard players add #bb.fw.should_draw bb.success 1
execute if data block ~ ~ ~ Items[{Slot: 9b}].tag{ucit: {id: "green_dye_slot", from: "boomber:framework"}} unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 9b, Count: 1b}]} run scoreboard players add #bb.fw.should_draw bb.success 1
execute if data block ~ ~ ~ Items[{Slot: 18b}].tag{ucit: {id: "blue_dye_slot", from: "boomber:framework"}} unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 18b, Count: 1b}]} run scoreboard players add #bb.fw.should_draw bb.success 1