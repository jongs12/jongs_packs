advancement revoke @s only jongs:ranged_weapons/shoot/rocket_launcher
scoreboard players set @s jongs.ranged_weapons.click 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return 0
execute if score @s jongs.ranged_weapons.hold matches 1 run return 0
execute unless score @s jongs.ranged_weapons.cooldown.rocket_launcher matches 0 run return 0
item modify entity @s weapon.mainhand jongs:ranged_weapons/shoot_very_big
return run function jongs:ranged_weapons/rocket_launcher/start