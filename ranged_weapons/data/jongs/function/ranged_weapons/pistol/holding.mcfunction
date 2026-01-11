execute if score @s jongs_ranged_weapons_reload matches 2027 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"dark_aqua"}
execute if score @s jongs_ranged_weapons_reload matches 2026 run playsound minecraft:block.chain.place player @a ~ ~ ~ 1 0.8
execute if score @s jongs_ranged_weapons_reload matches 2002 run playsound minecraft:block.chain.fall player @a ~ ~ ~ 1 0.7
execute if score @s jongs_ranged_weapons_reload matches 2001 run item modify entity @s weapon.mainhand jongs:ranged_weapons/fully_loaded
execute if score @s[predicate=!jongs:ranged_weapons/can_shoot] jongs_ranged_weapons_reload matches 2001..2999 run return run scoreboard players remove @s jongs_ranged_weapons_reload 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return run scoreboard players set @s jongs_ranged_weapons_reload 2027