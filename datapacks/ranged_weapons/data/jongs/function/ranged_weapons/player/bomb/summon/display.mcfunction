item modify entity @s weapon.mainhand {function:set_components,components:{"minecraft:repair_cost":0}}
execute if items entity @s weapon.mainhand *[max_damage=1,damage~{durability:0}] run item modify entity @s weapon.mainhand {function:set_count,count:-1,add:true}
$summon minecraft:snowball ^ ^ ^ {Owner:$(UUID),Item:{id:"minecraft:copper_nugget",components:{item_model:"jongs:ranged_weapons/throwables/nothing"}},Motion:[$(x),$(y),$(z)],Passengers:[{id:"minecraft:item_display",data:{jongs:[{purpose:"ranged_weapons.from_weapons",path:"display"}]}, \
Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.from_weapons","jongs.ranged_weapons.$(item_name)"],item:{id:"minecraft:stone",count:1,components:{item_model:"jongs:ranged_weapons/throwables/$(item_name)"}}, \
brightness:{block:$(block_light),sky:$(sky_light)},transformation:{right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],left_rotation:[0,0,0,1],translation:[0,0,0]} }] }
scoreboard players operation @e[type=minecraft:item_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
scoreboard players set @e[type=minecraft:item_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.hold 20
rotate @e[type=minecraft:item_display,tag=jongs.ranged_weapons.summoned,limit=1] ~ ~
return run tag @e[type=minecraft:item_display,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned