# 1) Copy the 1st element of input array into output array
# 2) Remove that 1st element from input array
# 3) Decrease #bb.fw.current_page
# 
# This process will run forever until the score #bb.fw.current_page is less than 0
# By the time that happen we will reach the targeted page
# And then we can use the output array as the return item

data modify storage boomber:framework/furniture_table output_list set from storage boomber:framework/furniture_table input_list[0]
data remove storage boomber:framework/furniture_table input_list[0]

scoreboard players remove #bb.fw.current_page bb.calculation 1
execute if score #bb.fw.current_page bb.calculation matches 0.. run function boomber:framework/trait/furniture_table/ui/get/page