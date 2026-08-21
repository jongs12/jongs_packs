execute if entity @s[tag=jongs.water_bucket_release.ready] run return 0
playsound minecraft:item.bucket.empty block @a ~ ~ ~ 1 1
execute store result score @s jongs.water_bucket_release.x run data get entity @s Pos[0] 100
execute store result score @s jongs.water_bucket_release.y run data get entity @s Pos[1] 100
execute store result score @s jongs.water_bucket_release.z run data get entity @s Pos[2] 100
tag @s add jongs.water_bucket_release.ready
return run schedule function jongs:water_bucket_release/player/delay 1t append