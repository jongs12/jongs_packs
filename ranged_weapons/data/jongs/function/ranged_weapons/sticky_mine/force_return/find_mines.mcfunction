tag @s add jongs.ranged_weapons.owner
execute as @e[type=minecraft:marker,tag=jongs.ranged_weapons.thrown_mine] if score @s jongs.ranged_weapons.player_id = @a[tag=jongs.ranged_weapons.owner,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.exploding
execute as @e[type=minecraft:marker,tag=jongs.ranged_weapons.exploding] at @s run function jongs:ranged_weapons/sticky_mine/force_return/add_tags
return run tag @s remove jongs.ranged_weapons.owner