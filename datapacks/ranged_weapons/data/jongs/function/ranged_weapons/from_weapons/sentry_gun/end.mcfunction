tag @e[type=!#jongs:ranged_weapons/throwables_dont_target,tag=!jongs.ranged_weapons.shooter,tag=jongs.ranged_weapons.will_target] remove jongs.ranged_weapons.will_target
tag @e[type=!#jongs:ranged_weapons/throwables_dont_target,tag=!jongs.ranged_weapons.shooter,tag=jongs.ranged_weapons.do_not_target] remove jongs.ranged_weapons.do_not_target
execute on vehicle run tag @s remove jongs.ranged_weapons.shooter
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
tag @s remove jongs.ranged_weapons.shooting
return run scoreboard players set @s jongs.ranged_weapons.delay 20