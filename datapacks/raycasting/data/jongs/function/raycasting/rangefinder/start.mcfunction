tag @s add jongs.raycasting.caster
scoreboard players operation @s jongs.raycasting.distance = #측정범위 jongs.raycasting.distance
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function jongs:raycasting/rangefinder/process
scoreboard players operation @s jongs.raycasting.cooldown = #측정시간 jongs.raycasting.cooldown
return run tag @s remove jongs.raycasting.caster