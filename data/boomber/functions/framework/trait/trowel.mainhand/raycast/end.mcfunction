function boomber:framework/trait/trowel.mainhand/randomizer/get

#> `item` tag have data {Count: -1b} whenever it's empty (for some reason) so we have to make this condition
execute unless data storage boomber:framework/trowel.mainhand item{Count: -1b} if data storage boomber:framework/trowel.mainhand item run function boomber:framework/trait/trowel.mainhand/placer/place

scoreboard players set #bb.fw.raycast bb.success 1