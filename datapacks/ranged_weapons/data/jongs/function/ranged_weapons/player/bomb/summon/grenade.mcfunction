$summon minecraft:snowball ^ ^ ^ {Owner:$(UUID),Item:{id:"$(item_name)"},Motion:[$(x),$(y),$(z)],Passengers:[{id:"minecraft:marker", \
data:{jongs:[{purpose:"ranged_weapons.from_weapons",path:"grenade"}]},Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.from_weapons"]}] }
scoreboard players operation @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.hold 10
$scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.click $(attack_damage)
rotate @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] ~ ~
return run tag @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned