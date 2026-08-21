$summon minecraft:snowball ^ ^ ^ {Owner:$(UUID),NoGravity:true,HasVisualFire:true,Item:{id:"minecraft:fire_charge",components:{item_model:"jongs:ranged_weapons/throwables/nothing"}},Motion:[$(x),$(y),$(z)], \
Passengers:[{id:"minecraft:marker",data:{jongs:[{purpose:"ranged_weapons.from_weapons",path:"fireball"}]},Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.from_weapons"]}] }
scoreboard players operation @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
$scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.delay $(fire_duration)
scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.hold 10
$scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.click $(attack_damage)
$scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.weapon_type $(wither_level)
$scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.reload_time $(slowness_level)
rotate @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] ~ ~
return run tag @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned