execute unless score @s jongs.ranged_weapons.delay matches 40.. run return run scoreboard players add @s jongs.ranged_weapons.delay 1
summon minecraft:marker ^ ^ ^ {data:{jongs:[{purpose:"ranged_weapons.from_weapons",path:"sticky_mine"}]},Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.from_weapons"]}
scoreboard players operation @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
tag @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned
playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 5 1.5
particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 1 10 normal
return run kill @s