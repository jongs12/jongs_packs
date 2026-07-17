particle minecraft:small_flame ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
playsound minecraft:entity.copper_golem.spawn player @a ~ ~ ~ 5 0.5
item modify entity @s weapon.mainhand {"function":"set_damage","damage":-0.01,"add":true}
tag @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter,tag=jongs.ranged_weapons.do_not_target] remove jongs.ranged_weapons.do_not_target
execute unless block ^ ^ ^ #jongs:ranged_weapons/saw/insta_break run return run tag @s remove jongs.ranged_weapons.shooter
execute if block ^ ^ ^ #jongs:ranged_weapons/saw/more_damage run item modify entity @s weapon.mainhand {"function":"set_damage","damage":-0.065,"add":true}
setblock ~ ~ ~ minecraft:air destroy
return run tag @s remove jongs.ranged_weapons.shooter