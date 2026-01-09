$summon minecraft:snowball ~ ~ ~ {Owner:$(UUID),Motion:[$(x),$(y),$(z)],Item:{components:{enchantment_glint_override:true},id:water_bucket}}
summon minecraft:marker ~ ~ ~ {data:{jongs:[{purpose:water_bucket_release_setblock}]}}
execute as @n[type=minecraft:marker,predicate=jongs:water_bucket_release/setblock_marker] run ride @s mount @n[type=minecraft:snowball]