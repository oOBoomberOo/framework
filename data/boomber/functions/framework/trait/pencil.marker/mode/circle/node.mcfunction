scoreboard players add #bb.fw.step bb.variable 5

execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run function boomber:framework/trait/pencil.marker/mode/circle/vector

execute if score #bb.fw.step bb.variable matches 0..360 rotated ~5 ~ run function boomber:framework/trait/pencil.marker/mode/circle/node