execute as @s[type=minecraft:marker,tag=jongs.ranged_weapons.shot_grenade] run return run function jongs:ranged_weapons/grenade_launcher/process/prepare
execute as @s[type=minecraft:marker,tag=jongs.ranged_weapons.thrown_mine] run return run function jongs:ranged_weapons/sticky_mine/enabled/detect
execute as @s[type=minecraft:block_display,tag=jongs.ranged_weapons.installed_turret] run return run say testing_summoned
return 0