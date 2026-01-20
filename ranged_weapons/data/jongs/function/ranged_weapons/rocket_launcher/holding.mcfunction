execute if score @s jongs.ranged_weapons.reload matches 6055 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"dark_green"}
execute if score @s jongs.ranged_weapons.reload matches 6054 run playsound minecraft:entity.ender_dragon.hurt player @a ~ ~ ~ 1.5 0.6
execute if score @s jongs.ranged_weapons.reload matches 6002 run playsound minecraft:block.chain.fall player @a ~ ~ ~ 1.5 0.7
execute if score @s jongs.ranged_weapons.reload matches 6001 store success score @s jongs.ranged_weapons.reload run item modify entity @s weapon.mainhand jongs:ranged_weapons/fully_loaded
execute if score @s[predicate=!jongs:ranged_weapons/can_shoot] jongs.ranged_weapons.reload matches 6001..6999 run return run scoreboard players remove @s jongs.ranged_weapons.reload 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return run scoreboard players set @s jongs.ranged_weapons.reload 6055
execute if score @s jongs.ranged_weapons.cooldown.rocket_launcher matches 1 run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1.5 0.7
execute if score @s jongs.ranged_weapons.cooldown.rocket_launcher matches 1.. run return run scoreboard players remove @s jongs.ranged_weapons.cooldown.rocket_launcher 1