tag @s remove jongs.water_bucket_release.ready
execute unless items entity @s weapon.mainhand minecraft:water_bucket run return 0
playsound minecraft:entity.splash_potion.throw player @a ~ ~ ~ 1 1
data modify storage jongs:water_bucket_release UUID set from entity @s UUID
summon minecraft:marker ^ ^ ^2 {Tags:["jongs.water_bucket_release.motion"]}
execute as @e[type=minecraft:marker,tag=jongs.water_bucket_release.motion,limit=1] run function jongs:water_bucket_release/marker/set_motion
execute store result storage jongs:water_bucket_release x float 0.01 run scoreboard players operation #변화.x jongs.water_bucket_release.main -= @s jongs.water_bucket_release.x
execute store result storage jongs:water_bucket_release y float 0.01 run scoreboard players operation #변화.y jongs.water_bucket_release.main -= @s jongs.water_bucket_release.y
execute store result storage jongs:water_bucket_release z float 0.01 run scoreboard players operation #변화.z jongs.water_bucket_release.main -= @s jongs.water_bucket_release.z
execute if entity @s[gamemode=!creative] run function jongs:water_bucket_release/player/clear
execute anchored eyes positioned ^ ^ ^ run return run function jongs:water_bucket_release/marker/shoot with storage jongs:water_bucket_release