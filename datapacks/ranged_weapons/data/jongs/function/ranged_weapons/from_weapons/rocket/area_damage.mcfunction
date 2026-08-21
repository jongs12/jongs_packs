scoreboard players set #피해여부 jongs.ranged_weapons.click 1
execute if entity @s[type=minecraft:item] store result score #피해여부 jongs.ranged_weapons.click run data get entity @s Age
$execute if score #피해여부 jongs.ranged_weapons.click matches 1.. run return run damage @s $(amount) jongs:ranged_weapons/explosion by @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
return 0