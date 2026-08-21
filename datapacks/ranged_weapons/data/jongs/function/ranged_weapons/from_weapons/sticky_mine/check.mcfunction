tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
scoreboard players set #피해여부 jongs.ranged_weapons.click 0
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/throwables_dont_target,tag=!jongs.ranged_weapons.shooter] run function jongs:ranged_weapons/from_weapons/sticky_mine/direct_damage
execute if score #피해여부 jongs.ranged_weapons.click matches 1 run return run function jongs:ranged_weapons/from_weapons/sticky_mine/explosion
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
scoreboard players add @s jongs.ranged_weapons.hold 1
execute if score @s jongs.ranged_weapons.hold matches 100.. run function jongs:ranged_weapons/from_weapons/sticky_mine/showing
execute if score @s jongs.ranged_weapons.delay matches 720.. run return run kill @s
return run tag @s remove jongs.ranged_weapons.shooting