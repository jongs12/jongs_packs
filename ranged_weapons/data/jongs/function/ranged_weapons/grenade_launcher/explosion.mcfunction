tag @s add jongs.ranged_weapons.exploding
$execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,nbt=!{UUID:$(shooter)},type=!#jongs:ranged_weapons/infinite_health] run damage @s 24 minecraft:player_explosion by @e[type=minecraft:marker,limit=1,tag=jongs.ranged_weapons.exploding] from @p[nbt={UUID:$(shooter)}]
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 5 0.5
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0.5 1 force
return run kill @s