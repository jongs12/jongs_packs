scoreboard players set #피해여부 jongs.ranged_weapons.click 1
execute if entity @s[type=minecraft:item] store result score #피해여부 jongs.ranged_weapons.click run data get entity @s Age
execute unless score #피해여부 jongs.ranged_weapons.click matches 1.. run return run tag @s add jongs.ranged_weapons.damaged
$damage @s $(amount) jongs:ranged_weapons/fire_explode by \
@e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
effect give @s[type=!#jongs:ranged_weapons/bullets_dont_target] minecraft:glowing 5 0 true
return run tag @s add jongs.ranged_weapons.damaged