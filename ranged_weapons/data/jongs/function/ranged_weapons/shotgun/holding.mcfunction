execute if score @s jongs.ranged_weapons.reload matches 3041 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"#55AA55"}
execute if score @s jongs.ranged_weapons.reload matches 3040 run playsound minecraft:block.chain.place player @a ~ ~ ~ 1.5 0.8
execute if score @s jongs.ranged_weapons.reload matches 3002 run playsound minecraft:block.chain.fall player @a ~ ~ ~ 1.5 0.7
execute if score @s jongs.ranged_weapons.reload matches 3001 store success score @s jongs.ranged_weapons.reload run item modify entity @s weapon.mainhand jongs:ranged_weapons/reloaded
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] if score @s jongs.ranged_weapons.reload matches 3001..3999 run return run scoreboard players remove @s jongs.ranged_weapons.reload 1
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] run return run scoreboard players set @s jongs.ranged_weapons.reload 3041
execute if score @s jongs.ranged_weapons.cooldown.shotgun matches 1 run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1.5 0.7
execute if score @s jongs.ranged_weapons.cooldown.shotgun matches 1.. run return run scoreboard players remove @s jongs.ranged_weapons.cooldown.shotgun 1
return 0