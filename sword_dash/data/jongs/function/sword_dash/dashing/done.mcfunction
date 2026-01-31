tp @s ^ ^ ^
playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 1 1.2 0
execute store result score #피해량.값 jongs.sword_dash.done run attribute @s minecraft:attack_damage get 10
$scoreboard players set #피해량.배수 jongs.sword_dash.done $(damage)
scoreboard players operation #피해량.값 jongs.sword_dash.done *= #피해량.배수 jongs.sword_dash.done
execute store result storage jongs:sword_dash damage float 0.01 run scoreboard players get #피해량.값 jongs.sword_dash.done
function jongs:sword_dash/dashing/damage with storage jongs:sword_dash
function jongs:sword_dash/dashing/breaking