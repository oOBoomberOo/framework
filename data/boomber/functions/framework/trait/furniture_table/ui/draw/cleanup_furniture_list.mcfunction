data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 2b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 2b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 2b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 2b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 2b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 3b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 3b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 3b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 3b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 3b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 4b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 4b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 4b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 4b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 4b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 5b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 5b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 5b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 5b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 5b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 6b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 6b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 6b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 6b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 6b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 7b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 7b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 7b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 7b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 7b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 11b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 11b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 11b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 11b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 11b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 12b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 12b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 12b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 12b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 12b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 13b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 13b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 13b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 13b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 13b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 14b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 14b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 14b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 14b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 14b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 15b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 15b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 15b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 15b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 15b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 16b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 16b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 16b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 16b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 16b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 20b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 20b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 20b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 20b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 20b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 21b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 21b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 21b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 21b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 21b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 22b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 22b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 22b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 22b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 22b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 23b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 23b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 23b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 23b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 23b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 24b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 24b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 24b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 24b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 24b}]

data modify storage boomber:framework/furniture_table equality_test set value {}
data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 25b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 25b}]
execute if score #bb.fw.equality_test bb.success matches 1 unless data block ~ ~ ~ Items[{Slot: 25b}].tag{ucit:{group: ["furniture_table/ui"]}} run data modify storage boomber:framework/furniture_table drop_items append from block ~ ~ ~ Items[{Slot: 25b}]
execute if score #bb.fw.equality_test bb.success matches 1 run data remove block ~ ~ ~ Items[{Slot: 25b}]
