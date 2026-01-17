advancement revoke @s only jongs:ranged_weapons/shoot/flamethrower
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return 0
item modify entity @s weapon.mainhand jongs:ranged_weapons/shoot_very_small
return run function jongs:ranged_weapons/flamethrower/start