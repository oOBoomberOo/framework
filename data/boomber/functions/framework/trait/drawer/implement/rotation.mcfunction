execute if block ~ ~ ~ #boomber:framework/closet/valid_block[facing=east] run data modify entity @s Pose.Head[1] set value -90f
execute if block ~ ~ ~ #boomber:framework/closet/valid_block[facing=south] run data modify entity @s Pose.Head[1] set value 0f
execute if block ~ ~ ~ #boomber:framework/closet/valid_block[facing=west] run data modify entity @s Pose.Head[1] set value 90f
execute if block ~ ~ ~ #boomber:framework/closet/valid_block[facing=north] run data modify entity @s Pose.Head[1] set value 180f