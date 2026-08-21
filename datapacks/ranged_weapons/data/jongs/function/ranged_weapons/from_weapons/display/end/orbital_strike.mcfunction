summon minecraft:item_display ~ ~ ~ {data:{jongs:[{purpose:"ranged_weapons.from_weapons",path:"orbital_strike"}]},item:{id:"minecraft:stone",count:1,components:{item_model:"minecraft:trial_spawner"}}, \
Tags:["jongs.ranged_weapons.from_weapons"],Rotation:[45,0],brightness:{block:15,sky:0},transformation:{right_rotation:[0,0,0,1],scale:[1,0.5,1],left_rotation:[0,0,0,1],translation:[0,-0.25,0]}}

summon minecraft:item_display ~ ~ ~ {data:{jongs:[{purpose:"ranged_weapons.from_weapons",path:"orbital_strike"}]},item:{id:"minecraft:stone",count:1,components:{item_model:"jongs:ranged_weapons/throwables/beam/clad"}}, \
Tags:["jongs.ranged_weapons.from_weapons"],Rotation:[0,0],brightness:{block:15,sky:0},transformation:{right_rotation:[0,0,0,1],scale:[0.6,200,0.6],left_rotation:[0,0,0,1],translation:[0,100,0]}}

summon minecraft:item_display ~ ~ ~ {data:{jongs:[{purpose:"ranged_weapons.from_weapons",path:"orbital_strike"}]},item:{id:"minecraft:stone",count:1,components:{item_model:"jongs:ranged_weapons/throwables/beam/core"}}, \
Tags:["jongs.ranged_weapons.from_weapons","jongs.ranged_weapons.rotating"],Rotation:[0,0],brightness:{block:15,sky:0},transformation:{right_rotation:[0,0,0,1],scale:[0.3,200,0.3],left_rotation:[0,0,0,1],translation:[0,100,0]},teleport_duration:1}

summon minecraft:item_display ~ ~360 ~ {data:{jongs:[{purpose:"ranged_weapons.from_weapons",path:"orbital_strike"}]},item:{id:"minecraft:stone",count:1,components:{item_model:"minecraft:netherite_block"}}, \
Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.from_weapons","jongs.ranged_weapons.dropping"],Rotation:[0,90],brightness:{block:15,sky:0},transformation:{right_rotation:[0,0,0,1],scale:[0.6,0.6,3],left_rotation:[0,0,0,1],translation:[0,0,1.5]},teleport_duration:1}

scoreboard players operation @e[type=minecraft:item_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
tag @e[type=minecraft:item_display,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned

playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 5 2
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 5 0.5
setblock ~ ~ ~ minecraft:light destroy
return run kill @s