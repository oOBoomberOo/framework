data modify storage boomber:framework/furniture_table output_list set from storage boomber:framework/furniture_table input_list[0]
data remove storage boomber:framework/furniture_table input_list[0]

scoreboard players remove #bb.fw.current_page bb.calculation 1
execute if score #bb.fw.current_page bb.calculation matches 0.. run function boomber:framework/trait/furniture_table/ui/get/page