$summon minecraft:marker ^ ^ ^ {data:{jongs:[{purpose:"ranged_weapons.from_weapons",path:"$(fire_type)"}]},Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.from_weapons","jongs.ranged_weapons.$(fire_type)"]}
scoreboard players operation @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
$scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.delay $(attack_range)
scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.hold 50
$scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.click $(attack_damage)
$scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.weapon_type $(damage_type)
$scoreboard players set @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.reload_time $(pierce_level)
rotate @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] ~ ~
return run tag @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned