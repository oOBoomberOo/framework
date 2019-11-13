execute store result score #bb.fw.current_durability bb.calculation run data get storage boomber:framework/trowel.mainhand return_item.tag.ucit.durability
execute store result score #bb.fw.max_durability bb.calculation run data get storage boomber:framework/trowel.mainhand return_item.tag.ucit.max_durability

scoreboard players remove #bb.fw.current_durability bb.calculation 1

scoreboard players operation #bb.fw.durability_ratio bb.calculation = #bb.fw.current_durability bb.calculation
scoreboard players operation #bb.fw.durability_ratio bb.calculation *= #100 bb.variable
scoreboard players operation #bb.fw.durability_ratio bb.calculation /= #bb.fw.max_durability bb.calculation

scoreboard players operation #bb.fw.actual_durability bb.calculation = #bb.fw.carrot_stick.durability bb.config

scoreboard players operation #bb.fw.actual_durability bb.calculation *= #bb.fw.durability_ratio bb.calculation
scoreboard players operation #bb.fw.actual_durability bb.calculation /= #100 bb.variable

scoreboard players operation #bb.fw.damage bb.calculation = #bb.fw.carrot_stick.durability bb.config
scoreboard players operation #bb.fw.damage bb.calculation -= #bb.fw.actual_durability bb.calculation

setblock ~ ~ ~ minecraft:oak_sign{Text1: '[{"translate": "boomber.framework.item.durability", "italic": false, "color": "aqua"}, {"text": ": "}, {"score": {"name": "#bb.fw.current_durability", "objective": "bb.calculation"}}, {"text": " / "}, {"score": {"name": "#bb.fw.max_durability", "objective": "bb.calculation"}}]'}
execute store result storage boomber:framework/trowel.mainhand return_item.tag.ucit.durability int 1 run scoreboard players get #bb.fw.current_durability bb.calculation
execute store result storage boomber:framework/trowel.mainhand return_item.tag.Damage int 1 run scoreboard players get #bb.fw.damage bb.calculation
data modify storage boomber:framework/trowel.mainhand return_item.tag.display.Lore[-2] set from block ~ ~ ~ Text1
setblock ~ ~ ~ minecraft:air