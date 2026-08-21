tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
execute positioned ^ ^ ^-0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter] run tag @s add jongs.ranged_weapons.do_not_target
function jongs:ranged_weapons/from_weapons/single/store
execute store result storage jongs:ranged_weapons damage.amount float 0.1 run scoreboard players get @s jongs.ranged_weapons.click
execute store result storage jongs:ranged_weapons attack.range int 1 run scoreboard players get @s jongs.ranged_weapons.delay
execute store result storage jongs:ranged_weapons attack.pierce int 1 run scoreboard players get @s jongs.ranged_weapons.reload_time
execute if entity @s[tag=jongs.ranged_weapons.multiple] run function jongs:ranged_weapons/from_weapons/multiple/start_0 with storage jongs:ranged_weapons attack
execute if entity @s[tag=jongs.ranged_weapons.shot_once] run function jongs:ranged_weapons/from_weapons/multiple/start_1 with storage jongs:ranged_weapons attack
tag @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter,tag=jongs.ranged_weapons.do_not_target] remove jongs.ranged_weapons.do_not_target
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
execute if entity @s[tag=jongs.ranged_weapons.shot_once] run return run kill @s
tag @s remove jongs.ranged_weapons.shooting
tag @s remove jongs.ranged_weapons.multiple
return run tag @s add jongs.ranged_weapons.shot_once