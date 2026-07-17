scoreboard players operation #현재값 jongs.rinne.remaining = @s jongs.rinne.remaining
scoreboard players operation #현재값 jongs.rinne.remaining %= #상수.20 jongs.rinne.remaining
execute unless score #현재값 jongs.rinne.remaining matches 0 run return 0
scoreboard players operation #현재값 jongs.rinne.remaining = @s jongs.rinne.remaining
scoreboard players operation #현재값 jongs.rinne.remaining /= #상수.20 jongs.rinne.remaining
execute if score #현재값 jongs.rinne.remaining matches ..0 run return run function jongs:rinne/metamorphosis/retrieve/weapons
title @s actionbar {"translate":"jongs.rinne.time_left","color":"light_purple","shadow_color":[0,0,0,1],"with":[{"score":{"name":"#현재값","objective":"jongs.rinne.remaining"},"color":"yellow","bold":true,"shadow_color":[0,0,0,1]}]}