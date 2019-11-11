#> This score determine if Furniture Table should redraw the screen
scoreboard players set #bb.fw.should_draw bb.success 0

#> Event lists
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/empty_dye_slot
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/invalid_dye_slot
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/filled_dye_slot
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/empty_blank_slot
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/occupy_blank_slot
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/has_furniture_change

#> Checking for `#bb.fw.should_draw` for now, if something happen try remove the check
execute if score #bb.fw.should_draw bb.success matches 0 run function boomber:framework/trait/furniture_table/ui/event_listener/page_slot

execute if score #bb.fw.should_draw bb.success matches 1.. run function boomber:framework/trait/furniture_table/ui/event/draw