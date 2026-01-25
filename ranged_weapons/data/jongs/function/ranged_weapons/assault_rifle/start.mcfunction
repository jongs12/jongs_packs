tag @s add jongs.ranged_weapons.loaded
scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set #공격성공 jongs.ranged_weapons.success 0
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set @s jongs.ranged_weapons.distance -200
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~ ~ 3 1.2
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/assault_rifle/process
return run tag @s remove jongs.ranged_weapons.loaded