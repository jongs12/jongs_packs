summon minecraft:item_display ^ ^ ^0.5 {item:{id:"minecraft:nether_star",count:1,components:{"minecraft:item_model":"jongs:rinne/metamorphose","minecraft:enchantment_glint_override":true}},Tags:["jongs.rinne.summoned","jongs.rinne.flying_star"],billboard:center,brightness:{block:15,sky:0},teleport_duration:1,transformation:{right_rotation:[0,0,0,1],scale:[2,2,2],left_rotation:[0,0,0,1],translation:[0,0,0]}}
rotate @e[type=minecraft:item_display,tag=jongs.rinne.summoned,limit=1] ~ ~
scoreboard players operation @e[type=minecraft:item_display,tag=jongs.rinne.summoned,limit=1] jongs.rinne.count = @s jongs.rinne.count
tag @e[type=minecraft:item_display,tag=jongs.rinne.summoned,limit=1] remove jongs.rinne.summoned
return run scoreboard players set @s jongs.rinne.hold 1