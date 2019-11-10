scoreboard players set #bb.fw.cleanup bb.success 0

#> Check for nearby [structore_void]
#region
execute positioned ~1 ~ ~ run function boomber:framework/raycast/candle/cleanup
execute positioned ~-1 ~ ~ run function boomber:framework/raycast/candle/cleanup
execute positioned ~ ~ ~1 run function boomber:framework/raycast/candle/cleanup
execute positioned ~ ~ ~-1 run function boomber:framework/raycast/candle/cleanup
execute positioned ~ ~1 ~ run function boomber:framework/raycast/candle/cleanup
execute positioned ~ ~-1 ~ run function boomber:framework/raycast/candle/cleanup
#endregion

#> Stop raycasting if [structure_void]<nearby> && [#torch_decorator/torch]<~ ~ ~>
execute if score #bb.fw.cleanup bb.success matches 1.. run function boomber:framework/raycast/candle/end