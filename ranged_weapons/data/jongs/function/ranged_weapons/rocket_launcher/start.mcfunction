scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set @s jongs.ranged_weapons.cooldown.rocket_launcher 18
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 3 1.6
execute anchored eyes positioned ^ ^ ^ anchored feet run return run function jongs:ranged_weapons/rocket_launcher/summon with entity @s