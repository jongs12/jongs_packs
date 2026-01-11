scoreboard players operation @s jongs_ranged_weapons_assault_rifle_cooldown = 공격속도 jongs_ranged_weapons_assault_rifle_cooldown
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return 0
item modify entity @s weapon.mainhand jongs:ranged_weapons/shoot_small
return run function jongs:ranged_weapons/assault_rifle/start