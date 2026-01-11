scoreboard players set @s jongs_ranged_weapons_loaded 1
scoreboard players set @s jongs_ranged_weapons_reload 0
scoreboard players operation @s jongs_ranged_weapons_sniper_rifle_cooldown = 공격속도 jongs_ranged_weapons_sniper_rifle_cooldown
scoreboard players operation @s jongs_ranged_weapons_distance = 거리제한_sniper_rifle jongs_ranged_weapons_distance
playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 2 0.8
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/sniper_rifle/process with entity @s
execute as @e[tag=jongs_ranged_weapons_hit] at @s run function jongs:ranged_weapons/sniper_rifle/damage
return run scoreboard players set @s jongs_ranged_weapons_loaded 0