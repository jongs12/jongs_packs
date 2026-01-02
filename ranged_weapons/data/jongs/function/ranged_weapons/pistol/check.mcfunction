scoreboard players set @s jongs_ranged_weapons_click 1
execute unless score @s jongs_ranged_weapons_hold matches 1 run function jongs:ranged_weapons/pistol/start
advancement revoke @s only jongs:ranged_weapons/shoot/pistol