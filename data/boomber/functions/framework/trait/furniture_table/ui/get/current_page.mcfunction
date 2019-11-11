#> Set default values
data modify storage boomber:framework/furniture_table current_furniture_list set value []
data modify storage boomber:framework/furniture_table output_list set value []
scoreboard players operation #bb.fw.current_page bb.calculation = @s bb.fw.page

#> Input: Every pages of furniture list
data modify storage boomber:framework/furniture_table input_list set from storage boomber:framework/furniture_table furniture_list
function boomber:framework/trait/furniture_table/ui/get/page
#> Return: A single page of furniture_list
data modify storage boomber:framework/furniture_table current_furniture_list set from storage boomber:framework/furniture_table output_list