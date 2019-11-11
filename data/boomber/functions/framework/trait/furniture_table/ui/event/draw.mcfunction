function boomber:framework/trait/furniture_table/ui/get/dyes

data remove storage boomber:framework/furniture_table drop_items
data remove storage boomber:framework/furniture_table drop_item
data merge storage boomber:framework/furniture_table {drop_items: [], drop_item: {}, previous_list: []}

function boomber:framework/trait/furniture_table/ui/draw/furniture_list
function boomber:framework/trait/furniture_table/ui/draw/dye_slot
function boomber:framework/trait/furniture_table/ui/draw/blank_slot
function boomber:framework/trait/furniture_table/ui/draw/page_slot

execute if data storage boomber:framework/furniture_table drop_items[] run function boomber:framework/trait/furniture_table/ui/event/drop_items
playsound minecraft:block.note_block.harp voice @a
execute as @a[distance=..7] run function boomber:framework/trait/furniture_table/ui/call/player/cleanup