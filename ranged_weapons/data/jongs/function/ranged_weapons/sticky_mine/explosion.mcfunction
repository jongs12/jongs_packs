tag @s add jongs.ranged_weapons.exploding
$execute positioned ~-4 ~-4 ~-4 as @e[dx=7,dy=7,dz=7,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health] run damage @s 40 minecraft:player_explosion by @e[type=minecraft:item_display,limit=1,tag=jongs.ranged_weapons.exploding] from @p[nbt={UUID:$(UUID)}]
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 5 1.5
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 3 2
particle minecraft:cherry_leaves ~ ~ ~ 4 4 4 1 100 normal
return run kill @s