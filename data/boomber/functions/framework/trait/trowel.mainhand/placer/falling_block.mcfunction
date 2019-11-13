#> Set falling_block's id to item.id
data modify entity @s BlockState.Name set from storage boomber:framework/trowel.mainhand item.id

#> Check if given item is placable (is block or item)
data modify storage boomber:framework/trowel.mainhand equality_test set from entity @s BlockState.Name
execute store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/trowel.mainhand equality_test set from storage boomber:framework/trowel.mainhand item.id

#> If it's item then kill this falling_block and drop that item
execute if score #bb.fw.equality_test bb.success matches 1.. run function boomber:framework/trait/trowel.mainhand/placer/drop_item

#> We can do this because falling_block will remove any block states that can't be use on the block automatically
# We don't have to detect which block could `facing` be use on
function boomber:framework/trait/trowel.mainhand/placer/falling_block/apply_facing
function boomber:framework/trait/trowel.mainhand/placer/falling_block/apply_axis
function boomber:framework/trait/trowel.mainhand/placer/falling_block/apply_half
function boomber:framework/trait/trowel.mainhand/placer/falling_block/apply_waterlogged
function boomber:framework/trait/trowel.mainhand/placer/falling_block/apply_block_entity_tag

tag @s remove boomber.framework.trowel.mainhand.falling_sand