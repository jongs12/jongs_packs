tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:item_display,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
advancement grant @a[distance=..12,gamemode=!creative,gamemode=!spectator,tag=jongs.ranged_weapons.shooter,limit=1] only jongs:ranged_weapons/get_striked
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/infinite_health] run damage @s 560 jongs:ranged_weapons/full_pierce by @e[type=minecraft:item_display,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force
particle minecraft:lava ~ ~ ~ 2 2 2 1 100 normal
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 10 0.5
execute as @e[distance=..4,type=!#jongs:ranged_weapons/infinite_health] run function jongs:ranged_weapons/from_weapons/orbital_strike/damage {amount:160}
execute as @e[distance=4..5,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.damaged] run function jongs:ranged_weapons/from_weapons/orbital_strike/damage {amount:142}
execute as @e[distance=5..6,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.damaged] run function jongs:ranged_weapons/from_weapons/orbital_strike/damage {amount:124}
execute as @e[distance=6..7,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.damaged] run function jongs:ranged_weapons/from_weapons/orbital_strike/damage {amount:107}
execute as @e[distance=7..8,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.damaged] run function jongs:ranged_weapons/from_weapons/orbital_strike/damage {amount:89}
execute as @e[distance=8..9,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.damaged] run function jongs:ranged_weapons/from_weapons/orbital_strike/damage {amount:71}
execute as @e[distance=9..10,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.damaged] run function jongs:ranged_weapons/from_weapons/orbital_strike/damage {amount:53}
execute as @e[distance=10..11,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.damaged] run function jongs:ranged_weapons/from_weapons/orbital_strike/damage {amount:36}
execute as @e[distance=11..12,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.damaged] run function jongs:ranged_weapons/from_weapons/orbital_strike/damage {amount:18}
execute as @e[distance=12..18,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.damaged] run function jongs:ranged_weapons/from_weapons/orbital_strike/damage {amount:0.1}
tag @e[type=!#jongs:ranged_weapons/infinite_health,tag=jongs.ranged_weapons.damaged] remove jongs.ranged_weapons.damaged
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
return run kill @s