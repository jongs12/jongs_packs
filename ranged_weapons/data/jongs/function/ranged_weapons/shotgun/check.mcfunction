advancement revoke @s only jongs:ranged_weapons/shoot/shotgun
scoreboard players set @s jongs_ranged_weapons_click 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return 0
execute if score @s jongs_ranged_weapons_hold matches 1 run return 0
execute unless score @s jongs_ranged_weapons_shotgun_cooldown matches 0 run return 0
item modify entity @s weapon.mainhand jongs:ranged_weapons/shoot_big
return run function jongs:ranged_weapons/shotgun/start