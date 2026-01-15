scoreboard players operation @s jongs.ranged_weapons.cooldown.assault_rifle = #공격속도 jongs.ranged_weapons.cooldown.assault_rifle
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return 0
item modify entity @s weapon.mainhand jongs:ranged_weapons/shoot_small
return run function jongs:ranged_weapons/assault_rifle/start