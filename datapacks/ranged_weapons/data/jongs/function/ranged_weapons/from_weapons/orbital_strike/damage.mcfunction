scoreboard players set #피해여부 jongs.ranged_weapons.click 1
execute if entity @s[type=minecraft:item] store result score #피해여부 jongs.ranged_weapons.click run data get entity @s Age
execute unless score #피해여부 jongs.ranged_weapons.click matches 1.. run return run tag @s add jongs.ranged_weapons.damaged
$damage @s $(amount) jongs:ranged_weapons/explosion by \
@e[type=minecraft:item_display,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1] 
ride @s[type=!#jongs:ranged_weapons/throwables_dont_target] dismount
return run tag @s add jongs.ranged_weapons.damaged