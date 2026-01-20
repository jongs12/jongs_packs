execute if score @s jongs.ranged_weapons.reload matches 7053 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"#AA00AA"}
execute if score @s jongs.ranged_weapons.reload matches 7052 run playsound minecraft:entity.ender_dragon.hurt player @a ~ ~ ~ 1.5 0.6
execute if score @s jongs.ranged_weapons.reload matches 7002 run playsound minecraft:block.chain.fall player @a ~ ~ ~ 1.5 0.7
execute if score @s jongs.ranged_weapons.reload matches 7001 store success score @s jongs.ranged_weapons.reload run item modify entity @s weapon.mainhand jongs:ranged_weapons/fully_loaded
execute if score @s[predicate=!jongs:ranged_weapons/can_shoot] jongs.ranged_weapons.reload matches 7001..7999 run return run scoreboard players remove @s jongs.ranged_weapons.reload 1
execute as @s[predicate=!jongs:ranged_weapons/can_shoot] run return run scoreboard players set @s jongs.ranged_weapons.reload 7053
execute if score @s jongs.ranged_weapons.cooldown.grenade_launcher matches 1 run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1.5 0.7
execute if score @s jongs.ranged_weapons.cooldown.grenade_launcher matches 1.. run return run scoreboard players remove @s jongs.ranged_weapons.cooldown.grenade_launcher 1