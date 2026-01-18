execute store result score @s jongs.ranged_weapons.hurt_time run data get entity @s HurtTime
execute as @s[predicate=jongs:ranged_weapons/not_invincible] store success score #엔티티감지 jongs.ranged_weapons.success run return run damage @s 9 minecraft:arrow by @p[tag=jongs.ranged_weapons.loaded]
return 0