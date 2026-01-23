tag @s add jongs.ranged_weapons.loaded
scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set @s jongs.ranged_weapons.cooldown.shotgun 12
playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 3 1.5
data modify storage jongs:ranged_weapons x_delta set value 0
data modify storage jongs:ranged_weapons y_delta set value 0
data modify storage jongs:ranged_weapons z_delta set value 0.5
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set #엔티티감지 jongs.ranged_weapons.success 0
scoreboard players set @s jongs.ranged_weapons.distance -80
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons z_delta set value 0.486
data modify storage jongs:ranged_weapons x_delta set value 0.12
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set #엔티티감지 jongs.ranged_weapons.success 0
scoreboard players set @s jongs.ranged_weapons.distance -80
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value -0.12
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set #엔티티감지 jongs.ranged_weapons.success 0
scoreboard players set @s jongs.ranged_weapons.distance -80
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value 0
data modify storage jongs:ranged_weapons y_delta set value 0.12
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set #엔티티감지 jongs.ranged_weapons.success 0
scoreboard players set @s jongs.ranged_weapons.distance -80
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons y_delta set value -0.12
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set #엔티티감지 jongs.ranged_weapons.success 0
scoreboard players set @s jongs.ranged_weapons.distance -80
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value 0.084
data modify storage jongs:ranged_weapons y_delta set value 0.084
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set #엔티티감지 jongs.ranged_weapons.success 0
scoreboard players set @s jongs.ranged_weapons.distance -80
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value -0.084
data modify storage jongs:ranged_weapons y_delta set value 0.084
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set #엔티티감지 jongs.ranged_weapons.success 0
scoreboard players set @s jongs.ranged_weapons.distance -80
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value 0.084
data modify storage jongs:ranged_weapons y_delta set value -0.084
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set #엔티티감지 jongs.ranged_weapons.success 0
scoreboard players set @s jongs.ranged_weapons.distance -80
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
data modify storage jongs:ranged_weapons x_delta set value -0.084
data modify storage jongs:ranged_weapons y_delta set value -0.084
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set #엔티티감지 jongs.ranged_weapons.success 0
scoreboard players set @s jongs.ranged_weapons.distance -80
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/shotgun/process with storage jongs:ranged_weapons
execute as @e[scores={jongs.ranged_weapons.hit=1..}] run function jongs:ranged_weapons/shotgun/damage_store
return run tag @s remove jongs.ranged_weapons.loaded