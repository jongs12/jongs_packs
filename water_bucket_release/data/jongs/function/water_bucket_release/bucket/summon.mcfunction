$summon minecraft:snowball ~ ~ ~ {Owner:$(UUID),Motion:[$(x),$(y),$(z)],Item:{id:water_bucket},Tags:["jongs_water_bucket_release_throw"]}
summon minecraft:marker ~ ~ ~ {Tags:["jongs_water_bucket_release_fill","jongs_water_bucket_release_throw"]}
execute as @e[type=minecraft:marker,tag=jongs_water_bucket_release_throw,limit=1] run ride @s mount @e[type=minecraft:snowball,tag=jongs_water_bucket_release_throw,limit=1]
tag @e[limit=2,tag=jongs_water_bucket_release_throw] remove jongs_water_bucket_release_throw