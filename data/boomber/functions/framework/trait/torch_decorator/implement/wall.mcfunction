execute if block ~ ~ ~ #boomber:framework/torch_decorator/wall[facing=east] run data modify entity @s Pose.Head[1] set value 90f
execute if block ~ ~ ~ #boomber:framework/torch_decorator/wall[facing=south] run data modify entity @s Pose.Head[1] set value 180f
execute if block ~ ~ ~ #boomber:framework/torch_decorator/wall[facing=west] run data modify entity @s Pose.Head[1] set value 270f
execute if block ~ ~ ~ #boomber:framework/torch_decorator/wall[facing=north] run data modify entity @s Pose.Head[1] set value 0f

scoreboard players add #bb.fw.model bb.variable 1