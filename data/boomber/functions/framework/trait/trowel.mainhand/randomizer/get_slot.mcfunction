data modify storage boomber:framework/trowel.mainhand element set from storage boomber:framework/trowel.mainhand input[0]
data remove storage boomber:framework/trowel.mainhand input[0]

scoreboard players add #bb.fw.index bb.calculation 1

execute if score #bb.fw.index bb.calculation = #bb.fw.slot bb.calculation run function boomber:framework/trait/trowel.mainhand/randomizer/store_slot
execute unless score #bb.fw.index bb.calculation = #bb.fw.slot bb.calculation run data modify storage boomber:framework/trowel.mainhand mutation append from storage boomber:framework/trowel.mainhand element

execute if data storage boomber:framework/trowel.mainhand input[] run function boomber:framework/trait/trowel.mainhand/randomizer/get_slot