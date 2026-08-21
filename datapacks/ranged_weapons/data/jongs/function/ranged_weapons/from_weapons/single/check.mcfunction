tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
execute positioned ^ ^ ^-0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter] run tag @s add jongs.ranged_weapons.do_not_target
function jongs:ranged_weapons/from_weapons/single/store
execute store result storage jongs:ranged_weapons damage.amount float 0.1 run scoreboard players get @s jongs.ranged_weapons.click
function jongs:ranged_weapons/from_weapons/single/process
execute as @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=jongs.ranged_weapons.hit] run function jongs:ranged_weapons/from_weapons/single/damage with storage jongs:ranged_weapons damage
tag @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter,tag=jongs.ranged_weapons.do_not_target] remove jongs.ranged_weapons.do_not_target
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
execute if score @s jongs.ranged_weapons.delay matches 0 run return run kill @s
tag @s remove jongs.ranged_weapons.shooting
scoreboard players remove @s jongs.ranged_weapons.delay 1
scoreboard players set @s jongs.ranged_weapons.hold 50
return run tp @s ^ ^ ^50