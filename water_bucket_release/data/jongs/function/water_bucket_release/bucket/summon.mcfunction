$summon minecraft:snowball ~ ~ ~ {Owner:$(UUID),Motion:[$(x),$(y),$(z)],Item:{id:water_bucket,components:{enchantment_glint_override:true}},Tags:["jongs.water_bucket_release.throw"]}
summon minecraft:marker ~ ~ ~ {Tags:["jongs.water_bucket_release.fill","jongs.water_bucket_release.throw"]}
execute as @e[type=minecraft:marker,tag=jongs.water_bucket_release.throw,limit=1] run ride @s mount @e[type=minecraft:snowball,tag=jongs.water_bucket_release.throw,limit=1]
tag @e[limit=2,tag=jongs.water_bucket_release.throw] remove jongs.water_bucket_release.throw