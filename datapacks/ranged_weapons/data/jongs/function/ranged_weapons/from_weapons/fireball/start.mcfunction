tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
execute store result storage jongs:ranged_weapons fireball.slowness int 1 run scoreboard players get @s jongs.ranged_weapons.reload_time
execute store result storage jongs:ranged_weapons fireball.wither int 1 run scoreboard players get @s jongs.ranged_weapons.weapon_type
execute store result storage jongs:ranged_weapons fireball.damage float 0.1 run scoreboard players get @s jongs.ranged_weapons.click
execute unless score @s jongs.ranged_weapons.delay matches 1.. run return run function jongs:ranged_weapons/from_weapons/fireball/explosion
return run function jongs:ranged_weapons/from_weapons/fireball/process