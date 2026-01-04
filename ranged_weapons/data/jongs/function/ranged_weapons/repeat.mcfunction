execute as @a[predicate=jongs:ranged_weapons/holding_sniper] at @s run function jongs:ranged_weapons/sniper_rifle/check2
execute as @a if score @s jongs_ranged_weapons_click matches 1 run scoreboard players set @s jongs_ranged_weapons_hold 1
execute as @a unless score @s jongs_ranged_weapons_click matches 1 run scoreboard players set @s jongs_ranged_weapons_hold 0
execute as @a run scoreboard players set @s jongs_ranged_weapons_click 0
execute as @a if score @s jongs_ranged_weapons_assault_rifle_cooldown matches 1 run advancement revoke @s only jongs:ranged_weapons/shoot/assault_rifle
execute as @a if score @s jongs_ranged_weapons_assault_rifle_cooldown matches 1.. run scoreboard players remove @s jongs_ranged_weapons_assault_rifle_cooldown 1
execute as @a if score @s jongs_ranged_weapons_shotgun_cooldown matches 1 at @s run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 0.7
execute as @a if score @s jongs_ranged_weapons_shotgun_cooldown matches 1.. run scoreboard players remove @s jongs_ranged_weapons_shotgun_cooldown 1
execute as @a if score @s jongs_ranged_weapons_sniper_rifle_cooldown matches 1 at @s run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 0.5
execute as @a if score @s jongs_ranged_weapons_sniper_rifle_cooldown matches 1.. run scoreboard players remove @s jongs_ranged_weapons_sniper_rifle_cooldown 1