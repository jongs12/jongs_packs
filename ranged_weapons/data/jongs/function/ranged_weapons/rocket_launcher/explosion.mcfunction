$execute positioned ~-8 ~-8 ~-8 as @e[dx=15,dy=15,dz=15,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/sniper_infinite_health] run damage @s 40 minecraft:player_explosion by @p[nbt={UUID:$(UUID)}]
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 10 0.5
particle minecraft:explosion_emitter ~ ~ ~ 3 1 3 1 10 force
return run kill @s