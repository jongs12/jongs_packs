tag @s add jongs.ranged_weapons.loaded
scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set @s jongs.ranged_weapons.cooldown.sniper_rifle 28
scoreboard players set @s jongs.ranged_weapons.distance -600
playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 3 0.8
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/sniper_rifle/process with entity @s
execute as @e[tag=jongs.ranged_weapons.hit] at @s run function jongs:ranged_weapons/sniper_rifle/damage
return run tag @s remove jongs.ranged_weapons.loaded