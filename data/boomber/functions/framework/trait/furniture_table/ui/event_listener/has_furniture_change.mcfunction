#> Check if there are items inside furniture list
data modify storage boomber:framework/furniture_table equality_test set value []
#> Using /execute if is proven to be significantly faster
execute if data block ~ ~ ~ Items[{Slot: 2b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 2b}]
execute if data block ~ ~ ~ Items[{Slot: 3b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 3b}]
execute if data block ~ ~ ~ Items[{Slot: 4b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 4b}]
execute if data block ~ ~ ~ Items[{Slot: 5b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 5b}]
execute if data block ~ ~ ~ Items[{Slot: 6b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 6b}]
execute if data block ~ ~ ~ Items[{Slot: 7b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 7b}]
execute if data block ~ ~ ~ Items[{Slot: 11b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 11b}]
execute if data block ~ ~ ~ Items[{Slot: 12b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 12b}]
execute if data block ~ ~ ~ Items[{Slot: 13b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 13b}]
execute if data block ~ ~ ~ Items[{Slot: 14b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 14b}]
execute if data block ~ ~ ~ Items[{Slot: 15b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 15b}]
execute if data block ~ ~ ~ Items[{Slot: 16b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 16b}]
execute if data block ~ ~ ~ Items[{Slot: 20b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 20b}]
execute if data block ~ ~ ~ Items[{Slot: 21b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 21b}]
execute if data block ~ ~ ~ Items[{Slot: 22b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 22b}]
execute if data block ~ ~ ~ Items[{Slot: 23b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 23b}]
execute if data block ~ ~ ~ Items[{Slot: 24b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 24b}]
execute if data block ~ ~ ~ Items[{Slot: 25b}].Count run data modify storage boomber:framework/furniture_table equality_test append from block ~ ~ ~ Items[{Slot: 25b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list
scoreboard players operation #bb.fw.should_draw bb.success += #bb.fw.equality_test bb.success

#> Handling user input, determine which slot the player just select
execute if score #bb.fw.equality_test bb.success matches 1.. run function boomber:framework/trait/furniture_table/ui/action/furniture_change