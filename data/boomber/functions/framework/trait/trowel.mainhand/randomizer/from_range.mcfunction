setblock ~ ~ ~ minecraft:chest
#> This loot table contain 9 pools
# Each pool contain condition that check if this entity's score is within a certain range
# This mean we must give entity context to this loot table
loot insert ~ ~ ~ loot boomber:framework/trait/trowel.mainhand/randomizer
execute store result score #bb.fw.slot bb.calculation run data get block ~ ~ ~ Items[0].Count
setblock ~ ~ ~ minecraft:air