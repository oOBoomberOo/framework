summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ['boomber.framework.trowel.mainhand.target', 'boomber.framework.trowel.mainhand.temp'], Age: 0, Duration: 1}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ['boomber.framework.trowel.mainhand.coordinate', 'boomber.framework.trowel.mainhand.temp'], Age: 0, Duration: 1}

execute as @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.coordinate] at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.target, limit=1] feet

execute store result score #bb.fw.rot.x bb.calculation run data get entity @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.coordinate, limit=1] Rotation[0]
execute store result score #bb.fw.rot.y bb.calculation run data get entity @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.coordinate, limit=1] Rotation[1]

scoreboard players operation #bb.fw.horizontal.facing bb.calculation = #bb.fw.rot.x bb.calculation
scoreboard players operation #bb.fw.horizontal.facing bb.calculation += #45 bb.variable
scoreboard players operation #bb.fw.horizontal.facing bb.calculation /= #90 bb.variable
scoreboard players operation #bb.fw.horizontal.facing bb.calculation %= #4 bb.variable

scoreboard players operation #bb.fw.vertical.facing bb.calculation = #bb.fw.rot.y bb.calculation
scoreboard players operation #bb.fw.vertical.facing bb.calculation += #45 bb.variable
scoreboard players operation #bb.fw.vertical.facing bb.calculation /= #90 bb.variable

#> We can do this because falling_block will remove any block states that can't be use on the block automatically
# We don't have to detect which block could `facing` be use on
function boomber:framework/trait/trowel.mainhand/placer/falling_block/apply_facing
function boomber:framework/trait/trowel.mainhand/placer/falling_block/apply_axis
function boomber:framework/trait/trowel.mainhand/placer/falling_block/apply_half
function boomber:framework/trait/trowel.mainhand/placer/falling_block/apply_waterlogged
function boomber:framework/trait/trowel.mainhand/placer/falling_block/apply_block_entity_tag

kill @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.temp]