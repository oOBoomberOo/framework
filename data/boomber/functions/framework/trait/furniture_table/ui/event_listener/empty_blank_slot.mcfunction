#> Check if each slots is != 1
execute unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 1b, Count: 1b}]} run scoreboard players add #bb.fw.should_draw bb.success 1
execute unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 10b, Count: 1b}]} run scoreboard players add #bb.fw.should_draw bb.success 1
execute unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 19b, Count: 1b}]} run scoreboard players add #bb.fw.should_draw bb.success 1