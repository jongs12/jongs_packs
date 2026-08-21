function jongs:ranged_weapons/from_weapons/rocket/process
execute if score #피해여부 jongs.ranged_weapons.click matches -1 run return 0
$tp @s ^ ^ ^$(amount)
execute if score @s jongs.ranged_weapons.delay matches 0 at @s run return run function jongs:ranged_weapons/from_weapons/rocket/explosion
tag @s remove jongs.ranged_weapons.shooting
tag @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter,tag=jongs.ranged_weapons.do_not_target] remove jongs.ranged_weapons.do_not_target
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
$scoreboard players set @s jongs.ranged_weapons.hold $(amount)
return run scoreboard players remove @s jongs.ranged_weapons.delay 1