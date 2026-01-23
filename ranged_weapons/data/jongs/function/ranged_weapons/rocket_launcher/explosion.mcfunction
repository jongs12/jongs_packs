tag @s add jongs.ranged_weapons.exploding
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=item,nbt={Age:0}] run data modify entity @s Invulnerable set value true
$execute positioned ~-6 ~-6 ~-6 as @e[dx=11,dy=11,dz=11,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health] run damage @s 40 minecraft:player_explosion by @e[type=minecraft:block_display,limit=1,tag=jongs.ranged_weapons.exploding] from @p[nbt={UUID:$(UUID)}]
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=item,nbt={Age:0}] run data modify entity @s Invulnerable set value false
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 10 0.5
particle minecraft:gust_emitter_large ~ ~ ~ 1.5 1.5 1.5 0.5 10 force
return run kill @s