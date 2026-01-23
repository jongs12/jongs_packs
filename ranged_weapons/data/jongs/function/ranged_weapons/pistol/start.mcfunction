tag @s add jongs.ranged_weapons.loaded
scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set #엔티티감지 jongs.ranged_weapons.success 0
scoreboard players set #짝수확인 jongs.ranged_weapons.distance 1
scoreboard players set @s jongs.ranged_weapons.distance -160
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 0.7
execute anchored eyes positioned ^ ^ ^ anchored feet run function jongs:ranged_weapons/pistol/process
return run tag @s remove jongs.ranged_weapons.loaded