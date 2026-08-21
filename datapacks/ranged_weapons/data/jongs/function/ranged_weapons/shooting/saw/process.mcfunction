tag @s add jongs.ranged_weapons.shooter
execute positioned ^ ^ ^-0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter] run tag @s add jongs.ranged_weapons.do_not_target
scoreboard players set #피해여부 jongs.ranged_weapons.click 0

execute unless block ^ ^ ^ #jongs:ranged_weapons/saw/ignore run return run function jongs:ranged_weapons/shooting/saw/break
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter, \
tag=!jongs.ranged_weapons.do_not_target] store success score #피해여부 jongs.ranged_weapons.click positioned ~0.5 ~0.5 ~0.5 run function jongs:ranged_weapons/shooting/saw/damage
execute if score #피해여부 jongs.ranged_weapons.click matches 1 run return run function jongs:ranged_weapons/shooting/saw/end
execute positioned ^ ^ ^0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter, \
tag=!jongs.ranged_weapons.do_not_target] store success score #피해여부 jongs.ranged_weapons.click positioned ~0.5 ~0.5 ~0.5 run function jongs:ranged_weapons/shooting/saw/damage
execute if score #피해여부 jongs.ranged_weapons.click matches 1 run return run function jongs:ranged_weapons/shooting/saw/end

execute unless block ^ ^ ^1 #jongs:ranged_weapons/saw/ignore positioned ^ ^ ^1 run return run function jongs:ranged_weapons/shooting/saw/break
execute positioned ^ ^ ^1 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter, \
tag=!jongs.ranged_weapons.do_not_target] store success score #피해여부 jongs.ranged_weapons.click positioned ~0.5 ~0.5 ~0.5 run function jongs:ranged_weapons/shooting/saw/damage
execute if score #피해여부 jongs.ranged_weapons.click matches 1 run return run function jongs:ranged_weapons/shooting/saw/end
execute positioned ^ ^ ^1.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter, \
tag=!jongs.ranged_weapons.do_not_target] store success score #피해여부 jongs.ranged_weapons.click positioned ~0.5 ~0.5 ~0.5 run function jongs:ranged_weapons/shooting/saw/damage
execute if score #피해여부 jongs.ranged_weapons.click matches 1 run return run function jongs:ranged_weapons/shooting/saw/end

execute unless block ^ ^ ^2 #jongs:ranged_weapons/saw/ignore positioned ^ ^ ^2 run return run function jongs:ranged_weapons/shooting/saw/break
execute positioned ^ ^ ^2 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter, \
tag=!jongs.ranged_weapons.do_not_target] store success score #피해여부 jongs.ranged_weapons.click positioned ~0.5 ~0.5 ~0.5 run function jongs:ranged_weapons/shooting/saw/damage
execute if score #피해여부 jongs.ranged_weapons.click matches 1 run return run function jongs:ranged_weapons/shooting/saw/end
execute positioned ^ ^ ^2.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter, \
tag=!jongs.ranged_weapons.do_not_target] store success score #피해여부 jongs.ranged_weapons.click positioned ~0.5 ~0.5 ~0.5 run function jongs:ranged_weapons/shooting/saw/damage
execute if score #피해여부 jongs.ranged_weapons.click matches 1 run return run function jongs:ranged_weapons/shooting/saw/end

execute unless block ^ ^ ^3 #jongs:ranged_weapons/saw/ignore positioned ^ ^ ^3 run return run function jongs:ranged_weapons/shooting/saw/break
return run function jongs:ranged_weapons/shooting/saw/end