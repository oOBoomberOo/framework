execute store result score #bb.fw.page_size bb.calculation run data get storage boomber:framework/furniture_table furniture_list
scoreboard players remove #bb.fw.page_size bb.calculation 1

execute if score @s bb.fw.page < #bb.fw.page_size bb.calculation run function boomber:framework/trait/furniture_table/ui/event/change_page/next
scoreboard players add #bb.fw.should_draw bb.success 1