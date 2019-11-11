# 1) Copy the 1st element of input array into output array
# 2) Remove that 1st element from input array
# 3) Spawn the item
# 
# This process will run forever until the input array is empty
data modify storage boomber:framework/furniture_table drop_item set from storage boomber:framework/furniture_table drop_items[0]
data remove storage boomber:framework/furniture_table drop_items[0]

execute if data storage boomber:framework/furniture_table drop_item.Count run function boomber:framework/trait/furniture_table/ui/call/drop_item
execute if data storage boomber:framework/furniture_table drop_items[] run function boomber:framework/trait/furniture_table/ui/event/drop_items