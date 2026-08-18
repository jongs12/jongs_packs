function jongs:ranged_weapons/from_weapons/single/process
execute as @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=jongs.ranged_weapons.hit] run function jongs:ranged_weapons/from_weapons/single/damage with storage jongs:ranged_weapons damage
$scoreboard players set @s jongs.ranged_weapons.reload_time $(pierce)
scoreboard players set @s jongs.ranged_weapons.hold 50

$execute facing ^1 ^ ^$(range) run function jongs:ranged_weapons/from_weapons/single/process
execute as @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=jongs.ranged_weapons.hit] run function jongs:ranged_weapons/from_weapons/single/damage with storage jongs:ranged_weapons damage
$scoreboard players set @s jongs.ranged_weapons.reload_time $(pierce)
scoreboard players set @s jongs.ranged_weapons.hold 50

$execute facing ^ ^1 ^$(range) run function jongs:ranged_weapons/from_weapons/single/process
execute as @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=jongs.ranged_weapons.hit] run function jongs:ranged_weapons/from_weapons/single/damage with storage jongs:ranged_weapons damage
$scoreboard players set @s jongs.ranged_weapons.reload_time $(pierce)
scoreboard players set @s jongs.ranged_weapons.hold 50

$execute facing ^-1 ^ ^$(range) run function jongs:ranged_weapons/from_weapons/single/process
execute as @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=jongs.ranged_weapons.hit] run function jongs:ranged_weapons/from_weapons/single/damage with storage jongs:ranged_weapons damage
$scoreboard players set @s jongs.ranged_weapons.reload_time $(pierce)
scoreboard players set @s jongs.ranged_weapons.hold 50

$execute facing ^ ^-1 ^$(range) run function jongs:ranged_weapons/from_weapons/single/process
execute as @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=jongs.ranged_weapons.hit] run function jongs:ranged_weapons/from_weapons/single/damage with storage jongs:ranged_weapons damage
$scoreboard players set @s jongs.ranged_weapons.delay $(range)
$scoreboard players set @s jongs.ranged_weapons.reload_time $(pierce)
return run scoreboard players set @s jongs.ranged_weapons.hold 50