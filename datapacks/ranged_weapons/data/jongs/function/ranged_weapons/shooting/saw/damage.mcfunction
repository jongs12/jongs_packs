damage @s 3.5 jongs:ranged_weapons/full_pierce by @a[tag=jongs.ranged_weapons.shooter,limit=1]
item modify entity @a[tag=jongs.ranged_weapons.shooter,limit=1] weapon.mainhand {"function":"set_damage","damage":-0.01,"add":true}
return run particle minecraft:small_flame ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal