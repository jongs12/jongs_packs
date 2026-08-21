scoreboard players set #피해여부 jongs.ranged_weapons.click 0
execute store success score #피해여부 jongs.ranged_weapons.click as @e[distance=..25,type=!#jongs:ranged_weapons/throwables_dont_target,tag=!jongs.ranged_weapons.shooter,tag=!jongs.ranged_weapons.do_not_target,limit=1] run tag @s add jongs.ranged_weapons.will_target
execute if score #피해여부 jongs.ranged_weapons.click matches 0 run return run function jongs:ranged_weapons/from_weapons/sentry_gun/end
scoreboard players set #피해여부 jongs.ranged_weapons.click 0
scoreboard players set @s jongs.ranged_weapons.hold 25
execute facing entity @e[type=!#jongs:ranged_weapons/throwables_dont_target,tag=jongs.ranged_weapons.will_target,tag=!jongs.ranged_weapons.do_not_target,limit=1] eyes run function jongs:ranged_weapons/from_weapons/sentry_gun/process
execute if score #피해여부 jongs.ranged_weapons.click matches 1 run return run function jongs:ranged_weapons/from_weapons/sentry_gun/effect
tag @e[type=!#jongs:ranged_weapons/throwables_dont_target,tag=jongs.ranged_weapons.will_target,tag=!jongs.ranged_weapons.do_not_target,limit=1] add jongs.ranged_weapons.do_not_target
execute if score @s jongs.ranged_weapons.click matches 1.. run return run function jongs:ranged_weapons/from_weapons/sentry_gun/start
return run function jongs:ranged_weapons/from_weapons/sentry_gun/end