scoreboard players set #피해여부 jongs.ranged_weapons.click 1
rotate @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] facing entity @s eyes
damage @s 4.5 jongs:ranged_weapons/no_pierce by @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
data remove entity @s last_hurt_by_player
return run damage @s 0 jongs:ranged_weapons/no_pierce by @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] from @e[type=minecraft:mannequin,tag=jongs.ranged_weapons.shooter,limit=1]