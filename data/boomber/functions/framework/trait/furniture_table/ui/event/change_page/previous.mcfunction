playsound minecraft:ui.button.click player @a[distance=..7]
function boomber:framework/trait/furniture_table/ui/get/selected_page
scoreboard players operation #bb.fw.input.page bb.variable = #bb.fw.page bb.calculation
scoreboard players remove #bb.fw.input.page bb.variable 1
function boomber:framework/trait/furniture_table/ui/action/store_page