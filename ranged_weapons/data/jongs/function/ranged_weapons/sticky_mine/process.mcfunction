execute if score @s jongs.ranged_weapons.distance matches -2 run playsound minecraft:block.anvil.use player @a ~ ~ ~ 1.5 1.5
execute if score @s jongs.ranged_weapons.distance matches -1 run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 1 10 normal
execute if score @s jongs.ranged_weapons.distance matches ..-1 run return run scoreboard players add @s jongs.ranged_weapons.distance 1
summon minecraft:marker ~ ~ ~ {Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.long_lasting","jongs.ranged_weapons.thrown_mine"]}
scoreboard players operation @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
tag @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned
return run kill @s