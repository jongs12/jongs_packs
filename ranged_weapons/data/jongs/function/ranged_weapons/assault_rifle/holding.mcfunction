execute if score @s jongs_ranged_weapons_reload matches 1049 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"gold"}
execute if score @s jongs_ranged_weapons_reload matches 1048 run playsound minecraft:block.chain.place player @a ~ ~ ~ 1.5 0.8
execute if score @s jongs_ranged_weapons_reload matches 1002 run playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 1.5 0.8
execute if score @s jongs_ranged_weapons_reload matches 1001 run item modify entity @s weapon.mainhand jongs:ranged_weapons/fully_loaded
execute if score @s[predicate=!jongs:ranged_weapons/can_shoot] jongs_ranged_weapons_reload matches 1000..1999 run return run scoreboard players remove @s jongs_ranged_weapons_reload 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return run scoreboard players set @s jongs_ranged_weapons_reload 1049