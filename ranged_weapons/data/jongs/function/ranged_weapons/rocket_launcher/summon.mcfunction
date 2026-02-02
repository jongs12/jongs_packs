summon minecraft:block_display ^ ^ ^ {block_state:{Name:"minecraft:shroomlight"},teleport_duration:1,brightness:{block:15,sky:0},transformation:{right_rotation:[0,0,0,1],scale:[0.25,0.25,0.5],left_rotation:[0,0,0,1],translation:[-0.125,-0.125,-0.25]},Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.limit_duration"]}
scoreboard players set @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.distance 75
rotate @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] ~ ~
scoreboard players set @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.success -1
scoreboard players operation @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
return run tag @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned