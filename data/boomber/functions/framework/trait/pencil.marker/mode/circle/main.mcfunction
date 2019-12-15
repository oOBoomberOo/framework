scoreboard players operation #bb.fw.target_uid bb.fw.uid = @s bb.fw.uid
execute as @e[tag=boomber.framework.trait.pencil.marker, distance=0.01..] if score #bb.fw.target_uid bb.fw.uid = @s bb.fw.uid run function boomber:framework/trait/pencil.marker/mode/select

execute store result score #bb.fw.node_count bb.variable if entity @e[tag=boomber.framework.pencil.select]

execute if score #bb.fw.node_count bb.variable matches 1 run function boomber:framework/trait/pencil.marker/mode/circle/display
execute if score #bb.fw.node_count bb.variable matches 2.. run function boomber:framework/trait/pencil.marker/remove
execute if score #bb.fw.node_count bb.variable matches 2.. as @e[tag=boomber.framework.pencil.select] run function boomber:framework/trait/pencil.marker/remove

execute as @e[tag=boomber.framework.pencil.select] run function boomber:framework/trait/pencil.marker/mode/deselect