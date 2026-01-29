tag @s add jongs.sword_dash.dasher
scoreboard players set @s jongs.sword_dash.distance 0
$scoreboard players remove @s jongs.sword_dash.distance $(distance)
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:sword_dash/dashing/process
return run tag @s remove jongs.sword_dash.dasher