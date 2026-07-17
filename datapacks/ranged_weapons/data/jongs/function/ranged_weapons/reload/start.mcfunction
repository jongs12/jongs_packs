$execute if score @s jongs.ranged_weapons.reload_time matches 0.. if score @s jongs.ranged_weapons.weapon_type matches $(weapon_type) run return 0
$scoreboard players set @s jongs.ranged_weapons.weapon_type $(weapon_type)
$scoreboard players set @s jongs.ranged_weapons.reload_time $(reload_time)
$playsound $(start_sound) player @a ~ ~ ~ 2 1
execute if score @s jongs.ranged_weapons.weapon_type matches 91..93 run return run title @s actionbar {"text":". . ."}
return run title @s actionbar {"translate":"jongs.ranged_weapons.reloading"}