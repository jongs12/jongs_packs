execute if score @s jongs.ranged_weapons.reload matches 3051 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"dark_red"}
execute if score @s jongs.ranged_weapons.reload matches 3050 run playsound minecraft:block.chain.place player @a ~ ~ ~ 1.5 0.8
execute if score @s jongs.ranged_weapons.reload matches 3002 run playsound minecraft:block.chain.fall player @a ~ ~ ~ 1.5 0.7
execute if score @s jongs.ranged_weapons.reload matches 3001 store success score @s jongs.ranged_weapons.reload run item modify entity @s weapon.mainhand jongs:ranged_weapons/fully_loaded
execute if score @s[predicate=!jongs:ranged_weapons/can_shoot] jongs.ranged_weapons.reload matches 3001..3999 run return run scoreboard players remove @s jongs.ranged_weapons.reload 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return run scoreboard players set @s jongs.ranged_weapons.reload 3051
execute if score @s jongs.ranged_weapons.cooldown.shotgun matches 1 run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1.5 0.7
execute if score @s jongs.ranged_weapons.cooldown.shotgun matches 1.. run return run scoreboard players remove @s jongs.ranged_weapons.cooldown.shotgun 1