execute as @a[predicate=jongs:ranged_weapons/holding_assault_rifle] at @s run function jongs:ranged_weapons/assault_rifle/holding
execute as @a[predicate=jongs:ranged_weapons/holding_pistol] at @s run function jongs:ranged_weapons/pistol/holding
execute as @a[predicate=jongs:ranged_weapons/holding_shotgun] at @s run function jongs:ranged_weapons/shotgun/holding
execute as @a[predicate=jongs:ranged_weapons/holding_sniper_rifle] at @s run function jongs:ranged_weapons/sniper_rifle/holding
execute as @a if score @s jongs_ranged_weapons_click matches 1 run scoreboard players set @s jongs_ranged_weapons_hold 1
execute as @a unless score @s jongs_ranged_weapons_click matches 1 run scoreboard players set @s jongs_ranged_weapons_hold 0
execute as @a run scoreboard players set @s jongs_ranged_weapons_click 0
execute as @a if score @s jongs_ranged_weapons_assault_rifle_cooldown matches 1 run advancement revoke @s only jongs:ranged_weapons/shoot/assault_rifle
execute as @a if score @s jongs_ranged_weapons_assault_rifle_cooldown matches 1.. run scoreboard players remove @s jongs_ranged_weapons_assault_rifle_cooldown 1