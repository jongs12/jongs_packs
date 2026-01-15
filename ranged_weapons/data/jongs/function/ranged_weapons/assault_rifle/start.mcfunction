scoreboard players set @s jongs.ranged_weapons.loaded 1
scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.assault_rifle jongs.ranged_weapons.distance
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~ ~ 3 1.2
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/assault_rifle/process with entity @s
return run scoreboard players set @s jongs.ranged_weapons.loaded 0