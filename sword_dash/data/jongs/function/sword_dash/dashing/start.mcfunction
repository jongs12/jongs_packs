scoreboard players set @s jongs_sword_dash_distance 0
$scoreboard players remove @s jongs_sword_dash_distance $(distance)
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:sword_dash/dashing/process with entity @s