#> Detect when player use carrot_on_a_stick
# This function can only run when player is holding trowel so the logic would be like this
# if (player is holding trowel && bb.fw.interact >= 1 && trowel's inventory is not empty)
execute if score @s bb.fw.interact matches 1.. if data entity @s SelectedItem.tag.ucit.framework.inventory[] run function boomber:framework/trait/trowel.mainhand/use