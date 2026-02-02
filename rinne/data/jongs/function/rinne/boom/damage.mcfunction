effect give @s minecraft:levitation 1 2 true
execute as @s[type=#jongs:rinne/one_hit] run return run damage @s 4096 minecraft:generic_kill by @a[scores={jongs.rinne.click=1,jongs.rinne.hold=0},limit=1]
return run damage @s 0.01 minecraft:player_attack by @a[scores={jongs.rinne.click=1,jongs.rinne.hold=0},limit=1]