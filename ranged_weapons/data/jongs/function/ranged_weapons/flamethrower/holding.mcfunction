execute if score @s jongs.ranged_weapons.reload matches 5049 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"gray"}
execute if score @s jongs.ranged_weapons.reload matches 5048 run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1.5 0.8
execute if score @s jongs.ranged_weapons.reload matches 5002 run playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 1.5 0.8
execute if score @s jongs.ranged_weapons.reload matches 5001 store success score @s jongs.ranged_weapons.reload run item modify entity @s weapon.mainhand jongs:ranged_weapons/fully_loaded
execute if score @s[predicate=!jongs:ranged_weapons/can_shoot] jongs.ranged_weapons.reload matches 5001..5999 run return run scoreboard players remove @s jongs.ranged_weapons.reload 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return run scoreboard players set @s jongs.ranged_weapons.reload 5049