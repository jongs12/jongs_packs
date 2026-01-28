$summon minecraft:snowball ^ ^ ^0.5 {Motion:[$(x),$(y),$(z)],Item:{id:fire_charge},Passengers:[{id:"minecraft:marker",Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.long_lasting","jongs.ranged_weapons.shot_grenade"]}]}
rotate @e[type=minecraft:marker,limit=1,tag=jongs.ranged_weapons.summoned] ~ ~
scoreboard players set @e[type=minecraft:marker,limit=1,tag=jongs.ranged_weapons.summoned] jongs.ranged_weapons.success -1
scoreboard players operation @e[type=minecraft:marker,limit=1,tag=jongs.ranged_weapons.summoned] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
return run tag @e[type=minecraft:marker,limit=1,tag=jongs.ranged_weapons.summoned] remove jongs.ranged_weapons.summoned