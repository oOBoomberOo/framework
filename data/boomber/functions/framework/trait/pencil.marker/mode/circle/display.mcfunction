tag @s add boomber.framework.pencil.center

scoreboard players set #bb.fw.distance bb.variable 0
execute as @e[tag=boomber.framework.pencil.select] at @s run function boomber:framework/trait/pencil.marker/mode/circle/edge

scoreboard players set #bb.fw.step bb.variable 0
function boomber:framework/trait/pencil.marker/mode/circle/node

tag @s remove boomber.framework.pencil.center