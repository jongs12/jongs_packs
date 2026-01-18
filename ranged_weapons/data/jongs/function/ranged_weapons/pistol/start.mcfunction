scoreboard players set @s jongs.ranged_weapons.loaded 1
scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players operation @s jongs.ranged_weapons.distance = #거리제한.pistol jongs.ranged_weapons.distance
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 0.7
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/pistol/process with entity @s
return run scoreboard players set @s jongs.ranged_weapons.loaded 0