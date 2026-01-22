execute unless predicate jongs:ranged_weapons/fully_loaded if score @s jongs.ranged_weapons.refill.sticky_mine matches 1.. run function jongs:ranged_weapons/sticky_mine/refill
execute if score @s jongs.ranged_weapons.cooldown.sticky_mine matches 1 run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1.5 1.2
execute if score @s jongs.ranged_weapons.cooldown.sticky_mine matches 1.. run return run scoreboard players remove @s jongs.ranged_weapons.cooldown.sticky_mine 1
return 0