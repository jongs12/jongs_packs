$summon minecraft:block_display ^ ^ ^ {data:{jongs:[{purpose:"ranged_weapons.from_weapons",path:"rocket"}]},Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.from_weapons"],block_state:{Name:"$(block_name)"},\
teleport_duration:1,brightness:{block:15,sky:0},transformation:{right_rotation:[0,0,0,1],scale:[0.25,0.25,0.5],left_rotation:[0,0,0,1],translation:[-0.125,-0.125,-0.25]}}
scoreboard players operation @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
$scoreboard players set @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.delay $(attack_range)
$scoreboard players set @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.hold $(movement_speed)
$scoreboard players set @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.click $(direct_damage)
$scoreboard players set @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.reload_time $(area_damage)
rotate @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] ~ ~
return run tag @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned