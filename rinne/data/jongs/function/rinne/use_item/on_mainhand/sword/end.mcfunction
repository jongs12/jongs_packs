kill @e[type=minecraft:item_display,tag=jongs.rinne.shooting,limit=1]
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
tag @s remove jongs.rinne.shooter
return run tag @s remove jongs.rinne.using_sword