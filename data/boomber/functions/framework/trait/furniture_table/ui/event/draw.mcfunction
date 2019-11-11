#> Get dyes value
function boomber:framework/trait/furniture_table/ui/get/dyes

#> I have PTSD with these weird NBT so just keep it here for now
data remove storage boomber:framework/furniture_table drop_items
data remove storage boomber:framework/furniture_table drop_item

#> Set default value
data merge storage boomber:framework/furniture_table {drop_items: [], drop_item: {}, previous_list: []}

function boomber:framework/trait/furniture_table/ui/draw/furniture_list
function boomber:framework/trait/furniture_table/ui/draw/dye_slot
function boomber:framework/trait/furniture_table/ui/draw/blank_slot
function boomber:framework/trait/furniture_table/ui/draw/page_slot

#> After everything done pushing items into this list start dropping those items into the world
execute if data storage boomber:framework/furniture_table drop_items[] run function boomber:framework/trait/furniture_table/ui/event/drop_items
#> Mainly remove ui_item that player might've pick up
execute as @a[distance=..7] run function boomber:framework/trait/furniture_table/ui/call/player/cleanup

#> Debuging purpose
# Play a sound everytime there's a draw update
# When testing you shouldn't hear this sound constantly
# But rather only when you interact with the UI
playsound minecraft:block.note_block.harp voice @a