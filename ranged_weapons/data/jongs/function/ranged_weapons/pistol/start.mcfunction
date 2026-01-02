scoreboard players operation @s jongs_ranged_weapons_distance = 거리제한_pistol jongs_ranged_weapons_distance
scoreboard players set @s jongs_ranged_weapons_success 0
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 2 1
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/pistol/process with entity @s