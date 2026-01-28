execute if score @s jongs.ranged_weapons.reload matches 4041 run title @s actionbar {"translate":"jongs.ranged_weapons.reloading","color":"#717171"}
execute if score @s jongs.ranged_weapons.reload matches 4040 run playsound minecraft:block.chain.place player @a ~ ~ ~ 1.5 0.8
execute if score @s jongs.ranged_weapons.reload matches 4002 run playsound minecraft:block.chain.fall player @a ~ ~ ~ 1.5 0.7
execute if score @s jongs.ranged_weapons.reload matches 4001 store success score @s jongs.ranged_weapons.reload run item modify entity @s weapon.mainhand jongs:ranged_weapons/reloaded
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] if score @s jongs.ranged_weapons.reload matches 4001..4999 run return run scoreboard players remove @s jongs.ranged_weapons.reload 1
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] run return run scoreboard players set @s jongs.ranged_weapons.reload 4041
execute if score @s jongs.ranged_weapons.cooldown.sniper_rifle matches 1 run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1.5 0.5
execute if score @s jongs.ranged_weapons.cooldown.sniper_rifle matches 1.. run return run scoreboard players remove @s jongs.ranged_weapons.cooldown.sniper_rifle 1
execute unless score @s jongs.ranged_weapons.hold matches 1 run return 0
execute if score @s jongs.ranged_weapons.click matches 1 run return 0
item modify entity @s weapon.mainhand jongs:ranged_weapons/shoot_big
return run function jongs:ranged_weapons/sniper_rifle/start