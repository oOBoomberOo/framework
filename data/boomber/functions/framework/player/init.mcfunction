#define tag boomber.framework.init

scoreboard players operation @s bb.fw.uid = #bb.fw.current_uid bb.fw.uid
scoreboard players add #bb.fw.current_uid bb.fw.uid 1

tag @s add boomber.framework.init