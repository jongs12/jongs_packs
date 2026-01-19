tag @s add jongs.ranged_weapons.exploding
$execute positioned ~-6 ~-6 ~-6 as @e[dx=11,dy=11,dz=11,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/sniper_infinite_health] run damage @s 40 minecraft:player_explosion by @e[type=minecraft:block_display,limit=1,tag=jongs.ranged_weapons.exploding] from @p[nbt={UUID:$(UUID)}]
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 10 0.5
particle minecraft:explosion_emitter ~ ~ ~ 1.2 1 1.2 0.5 9 force
return run kill @s