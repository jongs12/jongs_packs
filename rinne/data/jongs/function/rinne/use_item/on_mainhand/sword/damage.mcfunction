execute if entity @s[type=minecraft:creeper] run return run damage @s 4096 minecraft:generic_kill by @a[scores={jongs.rinne.click=1,jongs.rinne.hold=0},limit=1]
effect give @s minecraft:levitation 1 6 false
return run damage @s 1 minecraft:player_attack by @a[scores={jongs.rinne.click=1,jongs.rinne.hold=0},limit=1]