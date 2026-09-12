$execute unless score @s jongs.ranged_weapons.weapon_type matches $(weapon_type) run return 0
scoreboard players set @s jongs.ranged_weapons.reload_time -1
$execute unless entity @s[gamemode=creative] unless entity @s[level=$(level_need)..] run return run title @s actionbar {"translate":"jongs.ranged_weapons.canceled","color":"#AA5555","with":["$(level_need)"]}
$execute store result score #소모량 jongs.ranged_weapons.weapon_type run data get entity @s SelectedItem.components."minecraft:damage" $(xp_mult)
$execute store result storage jongs:ranged_weapons rocket.direct.amount int 1 run scoreboard players add #소모량 jongs.ranged_weapons.weapon_type $(xp_const)
function jongs:ranged_weapons/reload/consume with storage jongs:ranged_weapons rocket.direct
$item modify entity @s weapon.mainhand {"type":"minecraft:set_damage","damage":$(reload_amount),"add":true}
playsound minecraft:block.chain.hit player @a ~ ~ ~ 2 1
execute if items entity @s weapon.mainhand *[minecraft:damage~{damage:0}] run return run playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 2 0.5
$scoreboard players set @s jongs.ranged_weapons.reload_time $(reload_time)
return run scoreboard players operation @s jongs.ranged_weapons.reload_time /= #반복배수 jongs.ranged_weapons.reload_time