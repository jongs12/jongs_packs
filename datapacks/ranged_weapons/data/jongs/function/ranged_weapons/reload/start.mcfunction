$execute if score @s jongs.ranged_weapons.reload_time matches 0.. if score @s jongs.ranged_weapons.weapon_type matches $(weapon_type) run return 0
$execute unless entity @s[gamemode=creative] unless entity @s[level=$(level_need)..] run return run title @s actionbar {"translate":"jongs.ranged_weapons.low_level","color":"gray","with":["$(level_need)"]}
$scoreboard players set @s jongs.ranged_weapons.weapon_type $(weapon_type)
$scoreboard players set @s jongs.ranged_weapons.reload_time $(reload_time)
execute if score @s jongs.ranged_weapons.weapon_type matches 91..93 run return run title @s actionbar {"text":"...","color":"#000000","shadow_color":[1,1,1,1]}
$playsound $(start_sound) player @a ~ ~ ~ 2 1
return run title @s actionbar {"translate":"jongs.ranged_weapons.reloading"}