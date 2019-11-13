#> Copy trowel's inventory into block_list
data modify storage boomber:framework/trowel.mainhand block_list set from entity @s SelectedItem.tag.ucit.framework.inventory

#> Get size of block_list (a.k.a let range = block_list.length)
execute store result score @s bb.fw.range run data get storage boomber:framework/trowel.mainhand block_list
#> Get a random slot index from given range
execute positioned ~ 255 ~ run function boomber:framework/trait/trowel.mainhand/randomizer/from_range

#> Set default values
scoreboard players set #bb.fw.index bb.calculation 0
data modify storage boomber:framework/trowel.mainhand mutation set value []
data modify storage boomber:framework/trowel.mainhand input set value []
data modify storage boomber:framework/trowel.mainhand output_item set value {}
data modify storage boomber:framework/trowel.mainhand item set value {}
data modify storage boomber:framework/trowel.mainhand element set value {}
data modify storage boomber:framework/trowel.mainhand input set from storage boomber:framework/trowel.mainhand block_list

function boomber:framework/trait/trowel.mainhand/randomizer/get_slot

data modify storage boomber:framework/trowel.mainhand block_list set from storage boomber:framework/trowel.mainhand mutation
data modify storage boomber:framework/trowel.mainhand item set from storage boomber:framework/trowel.mainhand output_item