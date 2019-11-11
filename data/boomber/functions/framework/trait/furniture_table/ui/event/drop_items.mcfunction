data modify storage boomber:framework/furniture_table drop_item set from storage boomber:framework/furniture_table drop_items[0]
data remove storage boomber:framework/furniture_table drop_items[0]

execute if data storage boomber:framework/furniture_table drop_item.Count run function boomber:framework/trait/furniture_table/ui/call/drop_item
execute if data storage boomber:framework/furniture_table drop_items[] run function boomber:framework/trait/furniture_table/ui/event/drop_items