fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:orbital_strike/infinite_health] run damage @s 560 minecraft:fly_into_wall at ~0.5 ~0.5 ~0.5
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 normal
particle minecraft:lava ~ ~ ~ 2 2 2 1 100 normal
execute as @e[distance=..4,type=!#jongs:orbital_strike/infinite_health] run scoreboard players add @s jongs.orbital_strike.damage 1000
execute as @e[distance=4..5,type=!#jongs:orbital_strike/infinite_health] unless score @s jongs.orbital_strike.damage matches 1.. run scoreboard players add @s jongs.orbital_strike.damage 889
execute as @e[distance=5..6,type=!#jongs:orbital_strike/infinite_health] unless score @s jongs.orbital_strike.damage matches 1.. run scoreboard players add @s jongs.orbital_strike.damage 778
execute as @e[distance=6..7,type=!#jongs:orbital_strike/infinite_health] unless score @s jongs.orbital_strike.damage matches 1.. run scoreboard players add @s jongs.orbital_strike.damage 667
execute as @e[distance=7..8,type=!#jongs:orbital_strike/infinite_health] unless score @s jongs.orbital_strike.damage matches 1.. run scoreboard players add @s jongs.orbital_strike.damage 556
execute as @e[distance=8..9,type=!#jongs:orbital_strike/infinite_health] unless score @s jongs.orbital_strike.damage matches 1.. run scoreboard players add @s jongs.orbital_strike.damage 445
execute as @e[distance=9..10,type=!#jongs:orbital_strike/infinite_health] unless score @s jongs.orbital_strike.damage matches 1.. run scoreboard players add @s jongs.orbital_strike.damage 334
execute as @e[distance=10..11,type=!#jongs:orbital_strike/infinite_health] unless score @s jongs.orbital_strike.damage matches 1.. run scoreboard players add @s jongs.orbital_strike.damage 223
execute as @e[distance=11..12,type=!#jongs:orbital_strike/infinite_health] unless score @s jongs.orbital_strike.damage matches 1.. run scoreboard players add @s jongs.orbital_strike.damage 112
execute as @e[distance=12..18,type=!#jongs:orbital_strike/infinite_health] unless score @s jongs.orbital_strike.damage matches 1.. run scoreboard players add @s jongs.orbital_strike.damage 1
execute as @e[scores={jongs.orbital_strike.damage=0..}] run function jongs:orbital_strike/pager/calling/drop/damage_store
return run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 12 0.5