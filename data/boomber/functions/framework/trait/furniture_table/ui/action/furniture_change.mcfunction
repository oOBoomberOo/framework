#> ? Maybe include /execute if here as well?

# Set default equality_test value
data modify storage boomber:framework/furniture_table equality_test set value {}
# Copy previous_list[{Slot}] to equality_test
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 2b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 2b}]
# Check for equality with Items[{Slot}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 2b}]
# If Items[{Slot}] doesn't exists but equality_test does then automically return true
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 2b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
# Handling user input
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 3b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 3b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 3b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 3b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 4b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 4b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 4b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 4b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 5b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 5b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 5b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 5b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 6b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 6b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 6b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 6b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 7b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 7b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 7b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 7b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 11b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 11b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 11b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 11b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 12b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 12b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 12b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 12b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 13b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 13b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 13b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 13b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 14b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 14b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 14b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 14b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 15b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 15b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 15b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 15b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 16b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 16b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 16b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 16b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 20b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 20b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 20b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 20b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 21b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 21b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 21b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 21b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 22b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 22b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 22b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 22b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 23b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 23b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 23b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 23b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 24b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 24b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 24b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 24b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item

data modify storage boomber:framework/furniture_table equality_test set value {}
execute if data storage boomber:framework/furniture_table previous_list[{Slot: 25b}].Count run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: 25b}]
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: 25b}]
execute if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: 25b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1
execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.Count run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item