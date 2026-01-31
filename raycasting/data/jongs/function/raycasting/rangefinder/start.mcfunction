tag @s add jongs.raycasting.caster
scoreboard players operation @s jongs.raycasting.distance = #거리제한.raycasting jongs.raycasting.distance
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function jongs:raycasting/rangefinder/process
scoreboard players operation @s jongs.raycasting.cooldown.rangefinder = #쿨타임.거리측정 jongs.raycasting.cooldown.rangefinder
return run tag @s remove jongs.raycasting.caster