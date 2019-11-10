#> @s --<5.5>--> [#torch_decorator/torch] && !{trait.torch_decorator}
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #boomber:framework/torch_decorator/torch unless entity @e[tag=boomber.framework.trait.torch_decorator, distance=..0.3] run function boomber:framework/raycast/candle/check
execute as @s[distance=..5.5] if score #bb.fw.raycast bb.success matches 0 positioned ^ ^ ^0.1 run function boomber:framework/raycast/candle/run

execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:structure_void run function boomber:framework/raycast/candle/fail