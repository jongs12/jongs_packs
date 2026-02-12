tag @s add jongs.rinne.shooting
execute as @a if score @s jongs.rinne.count = @e[type=minecraft:item_display,tag=jongs.rinne.shooting,limit=1] jongs.rinne.count run tag @s add jongs.rinne.shooter
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=!jongs.rinne.shooter,type=!#jongs:rinne/infinite_health] run damage @s 7 minecraft:generic by @e[type=minecraft:item_display,tag=jongs.rinne.shooting,limit=1] from @a[tag=jongs.rinne.shooter,limit=1]
execute unless loaded ^ ^ ^1 as @a[tag=jongs.rinne.shooter,limit=1] at @s run return run function jongs:rinne/use_item/on_mainhand/sword/end
tag @s remove jongs.rinne.shooting
tag @a[tag=jongs.rinne.shooter,limit=1] remove jongs.rinne.shooter
return run tp ^ ^ ^1