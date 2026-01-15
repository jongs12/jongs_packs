scoreboard players set @s jongs.ranged_weapons.loaded 1
scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players operation @s jongs.ranged_weapons.cooldown.shotgun = #공격속도 jongs.ranged_weapons.cooldown.shotgun
playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 3 1.5
data modify storage jongs:ranged_weapons UUID set from entity @s UUID
data modify storage jongs:ranged_weapons x_delta set value 0
data modify storage jongs:ranged_weapons y_delta set value 0
data modify storage jongs:ranged_weapons z_delta set value 0.5
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.shotgun jongs.ranged_weapons.distance
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons z_delta set value 0.486
data modify storage jongs:ranged_weapons x_delta set value 0.12
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.shotgun jongs.ranged_weapons.distance
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value -0.12
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.shotgun jongs.ranged_weapons.distance
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value 0
data modify storage jongs:ranged_weapons y_delta set value 0.12
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.shotgun jongs.ranged_weapons.distance
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons y_delta set value -0.12
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.shotgun jongs.ranged_weapons.distance
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value 0.084
data modify storage jongs:ranged_weapons y_delta set value 0.084
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.shotgun jongs.ranged_weapons.distance
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value -0.084
data modify storage jongs:ranged_weapons y_delta set value 0.084
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.shotgun jongs.ranged_weapons.distance
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value 0.084
data modify storage jongs:ranged_weapons y_delta set value -0.084
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.shotgun jongs.ranged_weapons.distance
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value -0.084
data modify storage jongs:ranged_weapons y_delta set value -0.084
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.shotgun jongs.ranged_weapons.distance
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
execute as @e[scores={jongs.ranged_weapons.hit=1..}] run function jongs:ranged_weapons/shotgun/damage_store
return run scoreboard players set @s jongs.ranged_weapons.loaded 0