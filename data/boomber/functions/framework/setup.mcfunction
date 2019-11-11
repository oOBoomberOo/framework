#> Initialization & Setup

scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.success dummy
scoreboard objectives add bb.config dummy

scoreboard objectives add bb.fw.open dummy
scoreboard objectives add bb.fw.page dummy
scoreboard objectives add bb.fw.red_dye dummy
scoreboard objectives add bb.fw.green_dye dummy
scoreboard objectives add bb.fw.blue_dye dummy

scoreboard players set #27 bb.variable 27

function boomber:framework/config

scoreboard players operation #bb.fw.page_size bb.config = #bb.fw.row bb.config
scoreboard players operation #bb.fw.page_size bb.config *= #bb.fw.col bb.config