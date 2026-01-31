execute store success score #엔티티감지 jongs.ranged_weapons.success run damage @s 9 minecraft:player_attack by @a[tag=jongs.ranged_weapons.loaded,limit=1]
execute if score #엔티티감지 jongs.ranged_weapons.success matches 1 run return run scoreboard players set #공격성공 jongs.ranged_weapons.success 1
return 0