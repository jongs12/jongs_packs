execute if score @s jongs.ranged_weapons.reload matches 6051 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"#AA5555"}
execute if score @s jongs.ranged_weapons.reload matches 6050 run playsound minecraft:entity.ender_dragon.hurt player @a ~ ~ ~ 1.5 0.6
execute if score @s jongs.ranged_weapons.reload matches 6002 run playsound minecraft:block.chain.fall player @a ~ ~ ~ 1.5 0.7
execute if score @s jongs.ranged_weapons.reload matches 6001 store success score @s jongs.ranged_weapons.reload run item modify entity @s weapon.mainhand jongs:ranged_weapons/reloaded
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] if score @s jongs.ranged_weapons.reload matches 6001..6999 run return run scoreboard players remove @s jongs.ranged_weapons.reload 1
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] run return run scoreboard players set @s jongs.ranged_weapons.reload 6051
execute if score @s jongs.ranged_weapons.cooldown.rocket_launcher matches 1 run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1.5 0.7
execute if score @s jongs.ranged_weapons.cooldown.rocket_launcher matches 1.. run return run scoreboard players remove @s jongs.ranged_weapons.cooldown.rocket_launcher 1
return 0