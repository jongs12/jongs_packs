$effect give @s minecraft:wither 5 $(wither) true
$effect give @s minecraft:slowness 5 $(slowness) true
$return run damage @s $(damage) jongs:ranged_weapons/fire_explode \
by @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]