#> If the item frame is horizontal we can simple use its facing to determine doormat's rotation
# But if it's vertical then we will need to use the direction the player is looking
execute if score #bb.fw.facing bb.variable matches 0..1 run function boomber:framework/trait/doormat/implement/vertical_rotation
execute if score #bb.fw.facing bb.variable matches 2..5 run function boomber:framework/trait/doormat/implement/horizontal_rotation