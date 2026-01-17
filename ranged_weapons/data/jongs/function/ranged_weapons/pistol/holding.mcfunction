execute if score @s jongs.ranged_weapons.reload matches 2023 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"dark_aqua"}
execute if score @s jongs.ranged_weapons.reload matches 2022 run playsound minecraft:block.chain.place player @a ~ ~ ~ 1.5 0.8
execute if score @s jongs.ranged_weapons.reload matches 2002 run playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 1.5 0.8
execute if score @s jongs.ranged_weapons.reload matches 2001 store success score @s jongs.ranged_weapons.reload run item modify entity @s weapon.mainhand jongs:ranged_weapons/fully_loaded
execute if score @s[predicate=!jongs:ranged_weapons/can_shoot] jongs.ranged_weapons.reload matches 2001..2999 run return run scoreboard players remove @s jongs.ranged_weapons.reload 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return run scoreboard players set @s jongs.ranged_weapons.reload 2023