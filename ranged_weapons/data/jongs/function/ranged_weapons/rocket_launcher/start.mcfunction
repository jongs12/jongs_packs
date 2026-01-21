scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set @s jongs.ranged_weapons.cooldown.rocket_launcher 20
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 3 0.5
execute anchored eyes positioned ^ ^ ^ anchored feet run return run function jongs:ranged_weapons/rocket_launcher/summon with entity @s