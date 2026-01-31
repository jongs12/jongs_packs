execute as @s[type=#jongs:rinne/one_hit] run return run damage @s 4096 minecraft:generic_kill by @a[scores={jongs.rinne.click=1,jongs.rinne.hold=0},limit=1]
damage @s 0 minecraft:player_attack by @a[scores={jongs.rinne.click=1,jongs.rinne.hold=0},limit=1]
execute if items entity @s weapon.mainhand * at @s run function jongs:rinne/boom/drop_item {delay:40,slot:"weapon.mainhand"}