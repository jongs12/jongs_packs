$execute positioned ~-5 ~-5 ~-5 as @e[dx=9,dy=9,dz=9,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/sniper_infinite_health] run damage @s 40 minecraft:player_explosion by @p[nbt={UUID:$(UUID)}]
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 10 0.5
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0.5 8 force
return run kill @s