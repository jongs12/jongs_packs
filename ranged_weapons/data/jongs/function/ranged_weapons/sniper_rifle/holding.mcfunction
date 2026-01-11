execute if score @s jongs_ranged_weapons_reload matches 4047 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"dark_green"}
execute if score @s jongs_ranged_weapons_reload matches 4046 run playsound minecraft:block.chain.place player @a ~ ~ ~ 1 0.8
execute if score @s jongs_ranged_weapons_reload matches 4002 run playsound minecraft:block.chain.fall player @a ~ ~ ~ 1 0.7
execute if score @s jongs_ranged_weapons_reload matches 4001 run item modify entity @s weapon.mainhand jongs:ranged_weapons/fully_loaded
execute if score @s[predicate=!jongs:ranged_weapons/can_shoot] jongs_ranged_weapons_reload matches 4001..4999 run return run scoreboard players remove @s jongs_ranged_weapons_reload 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return run scoreboard players set @s jongs_ranged_weapons_reload 4047
execute if score @s jongs_ranged_weapons_sniper_rifle_cooldown matches 1 run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 0.5
execute if score @s jongs_ranged_weapons_sniper_rifle_cooldown matches 1.. run return run scoreboard players remove @s jongs_ranged_weapons_sniper_rifle_cooldown 1
execute unless score @s jongs_ranged_weapons_hold matches 1 run return 0
execute if score @s jongs_ranged_weapons_click matches 1 run return 0
item modify entity @s weapon.mainhand jongs:ranged_weapons/shoot_big
return run function jongs:ranged_weapons/sniper_rifle/start