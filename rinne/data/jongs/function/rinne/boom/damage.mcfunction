execute as @s[type=#jongs:rinne/one_hit] run return run damage @s 4096 minecraft:generic_kill by @p[scores={jongs.rinne.click=1,jongs.rinne.hold=0}]
damage @s 1 minecraft:player_attack by @p[scores={jongs.rinne.click=1,jongs.rinne.hold=0}]
execute if items entity @s weapon.mainhand * at @s run function jongs:rinne/boom/drop_item {delay:40,slot:"weapon.mainhand"}
effect give @s minecraft:weakness 2 99 false