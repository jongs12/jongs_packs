scoreboard players set @s jongs.ranged_weapons.loaded 1
scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players operation @s jongs.ranged_weapons.cooldown.sniper_rifle = #공격속도 jongs.ranged_weapons.cooldown.sniper_rifle
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.sniper_rifle jongs.ranged_weapons.distance
playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 3 0.8
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/sniper_rifle/process with entity @s
execute as @e[tag=jongs.ranged_weapons.hit] at @s run function jongs:ranged_weapons/sniper_rifle/damage
return run scoreboard players set @s jongs.ranged_weapons.loaded 0