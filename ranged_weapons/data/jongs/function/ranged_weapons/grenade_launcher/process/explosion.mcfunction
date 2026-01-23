tag @s add jongs.ranged_weapons.exploding
$execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 21 minecraft:player_explosion by @e[type=minecraft:marker,limit=1,tag=jongs.ranged_weapons.exploding] from @p[nbt={UUID:$(UUID)}]
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 5 0.5
particle minecraft:gust_emitter_large ~ ~ ~ 0 0 0 0.5 1 force
return run kill @s