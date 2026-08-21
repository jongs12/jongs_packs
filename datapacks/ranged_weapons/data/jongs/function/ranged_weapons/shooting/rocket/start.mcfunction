execute if score @s jongs.ranged_weapons.delay matches 1.. run return 0
$scoreboard players set #자동모드 jongs.ranged_weapons.hold $(auto_fire)
execute if score #자동모드 jongs.ranged_weapons.hold matches 0 if score @s jongs.ranged_weapons.hold matches 1.. run return 0
scoreboard players set @s jongs.ranged_weapons.hold 1
scoreboard players set @s jongs.ranged_weapons.reload_time -1
$scoreboard players set @s jongs.ranged_weapons.load_sound $(load_sound)
$scoreboard players set @s jongs.ranged_weapons.delay $(attack_time)
$item modify entity @s weapon.mainhand {"function":"set_damage","damage":-$(ammo_use),"add":true}
$playsound $(sound_name) player @a ~ ~ ~ 5 $(sound_pitch)
execute anchored eyes positioned ^ ^ ^ anchored feet run return run function jongs:ranged_weapons/shooting/rocket/summon with entity @s SelectedItem.components."minecraft:custom_data".jongs[{"purpose":"ranged_weapons.have_rocket"}]