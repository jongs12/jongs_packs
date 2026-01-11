scoreboard players set @s jongs_ranged_weapons_loaded 1
scoreboard players set @s jongs_ranged_weapons_reload 0
scoreboard players operation @s jongs_ranged_weapons_distance = 거리제한_pistol jongs_ranged_weapons_distance
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 2 0.7
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/pistol/process with entity @s
return run scoreboard players set @s jongs_ranged_weapons_loaded 0