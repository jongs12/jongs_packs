function jongs:ranged_weapons/from_weapons/sentry_gun/excluding
execute if entity @s[tag=jongs.ranged_weapons.do_not_target] run return run tag @s remove jongs.ranged_weapons.do_not_target
damage @s 19 jongs:ranged_weapons/explosion by @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
return run scoreboard players set #피해여부 jongs.ranged_weapons.click 1