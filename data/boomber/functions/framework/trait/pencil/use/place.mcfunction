# kill @e[tag=boomber.framework.trait.pencil.marker]

#define entity #bb.fw.raycast
scoreboard players set #bb.fw.raycast bb.success 0
execute anchored eyes positioned ^ ^ ^0.1 anchored feet run function boomber:framework/trait/pencil/place/raycast