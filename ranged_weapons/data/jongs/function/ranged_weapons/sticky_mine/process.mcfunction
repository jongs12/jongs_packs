execute if score @s jongs.ranged_weapons.distance matches -2 run playsound minecraft:block.anvil.use player @a ~ ~ ~ 1.5 1.5
execute if score @s jongs.ranged_weapons.distance matches -1 run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 1 10 normal
$execute if score @s jongs.ranged_weapons.distance matches 0..299 store success score @s jongs.ranged_weapons.success positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,nbt=!{UUID:$(shooter)},type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 30 minecraft:player_attack by @p[nbt={UUID:$(shooter)}]
$execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sticky_mine/explosion {"UUID":$(shooter)}
execute if score @s jongs.ranged_weapons.distance matches 300 run playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 2 1.5
execute if score @s jongs.ranged_weapons.distance matches 301 run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0.5 1 normal
$execute if score @s jongs.ranged_weapons.distance matches 330 run return run function jongs:ranged_weapons/sticky_mine/explosion {"UUID":$(shooter)}
return run scoreboard players add @s jongs.ranged_weapons.distance 1