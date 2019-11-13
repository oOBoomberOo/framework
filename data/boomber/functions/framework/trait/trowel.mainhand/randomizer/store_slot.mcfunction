execute store result score #bb.fw.count bb.calculation run data get storage boomber:framework/trowel.mainhand element.Count
scoreboard players remove #bb.fw.count bb.calculation 1

execute store result storage boomber:framework/trowel.mainhand element.Count byte 1 run scoreboard players get #bb.fw.count bb.calculation

data modify storage boomber:framework/trowel.mainhand output_item set from storage boomber:framework/trowel.mainhand element
execute if score #bb.fw.count bb.calculation matches 1.. run data modify storage boomber:framework/trowel.mainhand mutation append from storage boomber:framework/trowel.mainhand element