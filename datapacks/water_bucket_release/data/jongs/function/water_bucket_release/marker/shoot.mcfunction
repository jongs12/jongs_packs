$return run summon minecraft:snowball ~ ~ ~ {Owner:$(UUID),Motion:[$(x),$(y),$(z)],Item:{id:"minecraft:$(item)",components:{enchantment_glint_override:true}}, \
Passengers:[{id:"minecraft:marker",data:{jongs:[{purpose:"water_bucket_release.fill",path:"$(item)"}]},Tags:["jongs.water_bucket_release.fill"]}] \
}