tag @s[tag=!jongs.rinne.shooter] add jongs.rinne.shooter
execute as @e[type=minecraft:item_display,tag=jongs.rinne.flying_star] if score @s jongs.rinne.count = @a[tag=jongs.rinne.shooter,limit=1] jongs.rinne.count run kill @s
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
tag @s remove jongs.rinne.shooter
return run tag @s remove jongs.rinne.using_sword