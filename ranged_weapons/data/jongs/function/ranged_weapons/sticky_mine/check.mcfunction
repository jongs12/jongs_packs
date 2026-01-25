advancement revoke @s only jongs:ranged_weapons/shoot/sticky_mine
scoreboard players set @s jongs.ranged_weapons.click 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return 0
execute if score @s jongs.ranged_weapons.hold matches 1 run return 0
execute unless score @s jongs.ranged_weapons.cooldown.sticky_mine matches 0 run return 0
item modify entity @s weapon.mainhand {"function":"set_damage","add":true,"damage":-0.35}
return run function jongs:ranged_weapons/sticky_mine/start