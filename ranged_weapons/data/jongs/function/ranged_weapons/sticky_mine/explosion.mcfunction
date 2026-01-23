tag @s add jongs.ranged_weapons.exploding
$scoreboard players add @p[nbt={UUID:$(UUID)}] jongs.ranged_weapons.refill.sticky_mine 1
$execute positioned ~-3.5 ~-3.5 ~-3.5 as @e[dx=6,dy=6,dz=6,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health] run damage @s 26 minecraft:player_explosion by @e[type=minecraft:item_display,limit=1,tag=jongs.ranged_weapons.exploding] from @p[nbt={UUID:$(UUID)}]
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 5 0.7
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 5 2
particle minecraft:lava ~ ~ ~ 2 2 2 0.5 100 normal
particle minecraft:reverse_portal ~ ~ ~ 2 2 2 0.5 100 normal
particle minecraft:flash{color:[1,0.33,1,1]} ~ ~ ~ 0 0 0 0.5 1 normal
return run kill @s