scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set @s jongs.ranged_weapons.cooldown.sticky_mine 18
playsound minecraft:entity.snowball.throw player @a ~ ~ ~ 1 0.5
data modify storage jongs:ranged_weapons UUID set from entity @s UUID
execute store result score #위치.x jongs.ranged_weapons.click run data get entity @s Pos[0] 100
execute store result score #위치.y jongs.ranged_weapons.click run data get entity @s Pos[1] 100
execute store result score #위치.z jongs.ranged_weapons.click run data get entity @s Pos[2] 100
summon minecraft:marker ^ ^ ^1 {Tags:["jongs.ranged_weapons.motion"]}
execute as @e[type=minecraft:marker,tag=jongs.ranged_weapons.motion,limit=1] run function jongs:ranged_weapons/player/set_motion
execute store result storage jongs:ranged_weapons x float 0.01 run scoreboard players operation #변화.x jongs.ranged_weapons.click -= #위치.x jongs.ranged_weapons.click
execute store result storage jongs:ranged_weapons y float 0.01 run scoreboard players operation #변화.y jongs.ranged_weapons.click -= #위치.y jongs.ranged_weapons.click
execute store result storage jongs:ranged_weapons z float 0.01 run scoreboard players operation #변화.z jongs.ranged_weapons.click -= #위치.z jongs.ranged_weapons.click
data modify storage jongs:ranged_weapons rotation set from entity @s Rotation
execute anchored eyes positioned ^ ^ ^ anchored feet run return run function jongs:ranged_weapons/sticky_mine/summon with storage jongs:ranged_weapons