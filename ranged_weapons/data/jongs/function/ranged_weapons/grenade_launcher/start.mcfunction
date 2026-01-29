scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set @s jongs.ranged_weapons.cooldown.grenade_launcher 20
playsound minecraft:entity.item.pickup player @a ~ ~ ~ 3 0.6
execute store result score #위치.x jongs.ranged_weapons.click run data get entity @s Pos[0] 100
execute store result score #위치.y jongs.ranged_weapons.click run data get entity @s Pos[1] 100
execute store result score #위치.z jongs.ranged_weapons.click run data get entity @s Pos[2] 100
summon minecraft:marker ^ ^ ^3 {Tags:["jongs.ranged_weapons.motion"]}
execute as @e[type=minecraft:marker,tag=jongs.ranged_weapons.motion,limit=1] run function jongs:ranged_weapons/bullets/set_motion
execute store result storage jongs:ranged_weapons x float 0.01 run scoreboard players operation #변화.x jongs.ranged_weapons.click -= #위치.x jongs.ranged_weapons.click
execute store result storage jongs:ranged_weapons y float 0.01 run scoreboard players operation #변화.y jongs.ranged_weapons.click -= #위치.y jongs.ranged_weapons.click
execute store result storage jongs:ranged_weapons z float 0.01 run scoreboard players operation #변화.z jongs.ranged_weapons.click -= #위치.z jongs.ranged_weapons.click
execute anchored eyes positioned ^ ^ ^ anchored feet run return run function jongs:ranged_weapons/grenade_launcher/summon with storage jongs:ranged_weapons