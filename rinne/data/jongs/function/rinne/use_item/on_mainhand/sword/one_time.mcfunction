execute store result score #위치.x jongs.rinne.click run data get entity @s Pos[0] 100
execute store result score #위치.y jongs.rinne.click run data get entity @s Pos[1] 100
execute store result score #위치.z jongs.rinne.click run data get entity @s Pos[2] 100
summon minecraft:marker ^ ^ ^1.6 {Tags:["jongs.rinne.motion"]}
execute as @e[type=minecraft:marker,tag=jongs.rinne.motion,limit=1] run function jongs:rinne/use_item/on_mainhand/sword/set_motion
execute store result storage jongs:rinne x float 0.01 run scoreboard players operation #변화.x jongs.rinne.click -= #위치.x jongs.rinne.click
execute store result storage jongs:rinne y float 0.01 run scoreboard players operation #변화.y jongs.rinne.click -= #위치.y jongs.rinne.click
execute store result storage jongs:rinne z float 0.01 run scoreboard players operation #변화.z jongs.rinne.click -= #위치.z jongs.rinne.click
data modify storage jongs:rinne UUID set from entity @s UUID
execute anchored eyes positioned ^ ^ ^ anchored feet run return run function jongs:rinne/use_item/on_mainhand/sword/summon with storage jongs:rinne