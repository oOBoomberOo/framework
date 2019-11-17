#> Initialization & Setup

scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.success dummy
scoreboard objectives add bb.config dummy

scoreboard objectives add bb.fw.base_model dummy
scoreboard objectives add bb.fw.open dummy
scoreboard objectives add bb.fw.red_dye dummy
scoreboard objectives add bb.fw.green_dye dummy
scoreboard objectives add bb.fw.blue_dye dummy
scoreboard objectives add bb.fw.clay dummy
scoreboard objectives add bb.fw.range dummy

scoreboard objectives add bb.fw.interact minecraft.used:minecraft.carrot_on_a_stick

scoreboard players set #4 bb.variable 4
scoreboard players set #10 bb.variable 10
scoreboard players set #27 bb.variable 27
scoreboard players set #45 bb.variable 45
scoreboard players set #90 bb.variable 90
scoreboard players set #100 bb.variable 100

function boomber:framework/config

scoreboard players operation #bb.fw.page_size bb.config = #bb.fw.row bb.config
scoreboard players operation #bb.fw.page_size bb.config *= #bb.fw.col bb.config

schedule function boomber:framework/fixed_update 5t replace