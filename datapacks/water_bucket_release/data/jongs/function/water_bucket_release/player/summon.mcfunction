tag @s remove jongs.water_bucket_release.ready
execute unless items entity @s weapon.mainhand #jongs:water_bucket_release/in_bucket run return 0
playsound minecraft:entity.splash_potion.throw player @a ~ ~ ~ 1 1
data modify storage jongs:water_bucket_release UUID set from entity @s UUID
data modify storage jongs:water_bucket_release item set from entity @s SelectedItem.id
data modify storage jongs:water_bucket_release item set string storage jongs:water_bucket_release item 10
summon minecraft:marker ^ ^ ^2 {Tags:["jongs.water_bucket_release.motion"]}
execute as @e[type=minecraft:marker,tag=jongs.water_bucket_release.motion,limit=1] run function jongs:water_bucket_release/marker/set_motion
execute store result storage jongs:water_bucket_release x float 0.01 run scoreboard players operation #변화량 jongs.water_bucket_release.x -= @s jongs.water_bucket_release.x
execute store result storage jongs:water_bucket_release y float 0.01 run scoreboard players operation #변화량 jongs.water_bucket_release.y -= @s jongs.water_bucket_release.y
execute store result storage jongs:water_bucket_release z float 0.01 run scoreboard players operation #변화량 jongs.water_bucket_release.z -= @s jongs.water_bucket_release.z
execute if entity @s[gamemode=!creative] run function jongs:water_bucket_release/player/clear
execute anchored eyes positioned ^ ^ ^ run return run function jongs:water_bucket_release/marker/shoot with storage jongs:water_bucket_release