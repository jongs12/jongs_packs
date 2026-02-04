rotate @s 180 -89
summon minecraft:block_display ~ ~ ~ {Tags:["jongs.orbital_strike.summoned","jongs.orbital_strike.limit_duration"],Rotation:[30,0],block_state:{Name:trial_spawner},brightness:{block:15,sky:0},transformation:{right_rotation:[0,0,0,1],scale:[1,0.3,1],left_rotation:[0,0,0,1],translation:[-0.5,-0.15,-0.5]}}
summon minecraft:block_display ~ ~ ~ {Tags:["jongs.orbital_strike.summoned","jongs.orbital_strike.limit_duration"],Rotation:[0,-90],block_state:{Name:red_stained_glass},brightness:{block:15,sky:0},transformation:{right_rotation:[0,0,0,1],scale:[0.6,0.6,200],left_rotation:[0,0,0,1],translation:[-0.3,-0.3,-12.5]}}
summon minecraft:block_display ~ ~ ~ {Tags:["jongs.orbital_strike.summoned","jongs.orbital_strike.limit_duration","jongs.orbital_strike.rotate"],Rotation:[0,-90],block_state:{Name:sea_lantern},teleport_duration:1,brightness:{block:15,sky:0},transformation:{right_rotation:[0,0,0,1],scale:[0.3,0.3,200],left_rotation:[0,0,0,1],translation:[-0.15,-0.15,-12.5]}}
summon minecraft:block_display ^ ^ ^360 {Tags:["jongs.orbital_strike.summoned","jongs.orbital_strike.limit_duration","jongs.orbital_strike.drop"],block_state:{Name:netherite_block},teleport_duration:1,brightness:{block:0,sky:15},transformation:{right_rotation:[0,0,0,1],scale:[0.6,0.6,3],left_rotation:[0,0,0,1],translation:[-0.3,-0.3,-1.5]}}
scoreboard players set @e[type=minecraft:block_display,tag=jongs.orbital_strike.summoned,limit=4] jongs.orbital_strike.duration 90
rotate @e[type=minecraft:block_display,tag=jongs.orbital_strike.summoned,tag=jongs.orbital_strike.drop,limit=1] facing entity @s
tag @e[type=minecraft:block_display,tag=jongs.orbital_strike.summoned,limit=4] remove jongs.orbital_strike.summoned
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 5 2
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 5 0.5
setblock ~ ~ ~ minecraft:light destroy
return run kill @s