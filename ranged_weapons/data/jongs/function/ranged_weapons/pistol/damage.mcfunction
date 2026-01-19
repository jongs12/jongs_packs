execute store result score @s jongs.ranged_weapons.hurt_time run data get entity @s HurtTime
damage @s 8 minecraft:sweet_berry_bush by @p[tag=jongs.ranged_weapons.loaded]
execute as @s[predicate=!jongs:ranged_weapons/not_invincible] run return 0
return run scoreboard players add #엔티티감지 jongs.ranged_weapons.success 1