$execute as @e[tag=jongs.sword_dash.hit] run damage @s $(damage) minecraft:trident by @a[tag=jongs.sword_dash.dasher,limit=1]
tag @e[tag=jongs.sword_dash.hit] remove jongs.sword_dash.hit