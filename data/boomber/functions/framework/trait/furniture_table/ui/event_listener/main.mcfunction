scoreboard players set #bb.fw.should_draw bb.success 0

execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/empty_dye_slot
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/invalid_dye_slot
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/filled_dye_slot
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/empty_blank_slot
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/occupy_blank_slot
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/has_furniture_change

#> Don't check for `#bb.fw.should_draw` because it need to change page
function boomber:framework/trait/furniture_table/ui/event_listener/page_slot

execute if score #bb.fw.should_draw bb.success matches 1.. run function boomber:framework/trait/furniture_table/ui/event/draw