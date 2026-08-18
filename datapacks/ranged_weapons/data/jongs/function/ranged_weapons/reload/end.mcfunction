$execute unless score @s jongs.ranged_weapons.weapon_type matches $(weapon_type) run return 0
scoreboard players set @s jongs.ranged_weapons.reload_time -1
$item modify entity @s weapon.mainhand {"function":"set_damage","damage":$(reload_amount),"add":true}
playsound minecraft:block.chain.hit player @a ~ ~ ~ 2 1
execute if items entity @s weapon.mainhand #jongs:ranged_weapons/guns[minecraft:damage~{damage:0}] run return run playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 2 0.5
$scoreboard players set @s jongs.ranged_weapons.reload_time $(reload_time)
return run scoreboard players operation @s jongs.ranged_weapons.reload_time /= #반복배수 jongs.ranged_weapons.reload_time