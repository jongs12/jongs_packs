scoreboard players operation @s jongs_ranged_weapons_distance = 거리제한_sniper_rifle jongs_ranged_weapons_distance
scoreboard players set @s jongs_ranged_weapons_success 0
playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 2 0.8
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/sniper_rifle/process with entity @s
scoreboard players set @s jongs_ranged_weapons_success 1
execute as @e[tag=jongs_ranged_weapons_hit] at @s run function jongs:ranged_weapons/sniper_rifle/damage
scoreboard players set @s jongs_ranged_weapons_success -1