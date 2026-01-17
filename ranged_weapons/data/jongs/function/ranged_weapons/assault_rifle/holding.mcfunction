execute if score @s jongs.ranged_weapons.reload matches 1041 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"gold"}
execute if score @s jongs.ranged_weapons.reload matches 1040 run playsound minecraft:block.chain.place player @a ~ ~ ~ 1.5 0.8
execute if score @s jongs.ranged_weapons.reload matches 1002 run playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 1.5 0.8
execute if score @s jongs.ranged_weapons.reload matches 1001 store success score @s jongs.ranged_weapons.reload run item modify entity @s weapon.mainhand jongs:ranged_weapons/fully_loaded
execute if score @s[predicate=!jongs:ranged_weapons/can_shoot] jongs.ranged_weapons.reload matches 1001..1999 run return run scoreboard players remove @s jongs.ranged_weapons.reload 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return run scoreboard players set @s jongs.ranged_weapons.reload 1041
execute if score @s jongs.ranged_weapons.cooldown.assault_rifle matches 1 run advancement revoke @s only jongs:ranged_weapons/shoot/assault_rifle
execute if score @s jongs.ranged_weapons.cooldown.assault_rifle matches 1.. run return run scoreboard players remove @s jongs.ranged_weapons.cooldown.assault_rifle 1