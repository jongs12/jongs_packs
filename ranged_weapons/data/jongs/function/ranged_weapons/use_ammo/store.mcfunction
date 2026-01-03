scoreboard players set @s jongs_ranged_weapons_loaded 1
$data modify storage jongs:ranged_weapons id set from entity @s $(slot).id
$data modify storage jongs:ranged_weapons data set from entity @s $(slot).components."minecraft:custom_data"
function jongs:ranged_weapons/use_ammo/clear with storage jongs:ranged_weapons