tag @s remove jongs.ranged_weapons.ready
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] run return run function jongs:ranged_weapons/reload/start with entity @s SelectedItem.components."minecraft:custom_data".jongs[{"purpose":"ranged_weapons.can_reload"}]
execute if score @s jongs.ranged_weapons.delay matches 1.. run return 0
$scoreboard players set #자동모드 jongs.ranged_weapons.hold $(auto_fire)
execute if score #자동모드 jongs.ranged_weapons.hold matches 0 if score @s jongs.ranged_weapons.hold matches 1.. run return 0
scoreboard players set @s jongs.ranged_weapons.hold 1
scoreboard players set @s jongs.ranged_weapons.reload_time -1
$scoreboard players set @s jongs.ranged_weapons.load_sound $(load_sound)
$scoreboard players set @s jongs.ranged_weapons.delay $(attack_time)
$item modify entity @s weapon.mainhand {"function":"set_damage","damage":-$(ammo_use),"add":true}
$playsound $(sound_name) player @a ~ ~ ~ 5 $(sound_pitch)
data modify storage jongs:ranged_weapons bomb set from entity @s SelectedItem.components."minecraft:custom_data".jongs[{"purpose":"ranged_weapons.have_bomb"}]
data modify storage jongs:ranged_weapons bomb.UUID set from entity @s UUID
data remove storage jongs:ranged_weapons bomb.purpose
$summon minecraft:marker ^ ^ ^$(initial_speed) {Tags:["jongs.ranged_weapons.summoned"]}
execute as @e[type=marker,tag=jongs.ranged_weapons.summoned,limit=1] run function jongs:ranged_weapons/player/bomb/store
execute store result storage jongs:ranged_weapons bomb.x float 0.01 run scoreboard players operation #목표지점 jongs.ranged_weapons.x -= @s jongs.ranged_weapons.x
execute store result storage jongs:ranged_weapons bomb.y float 0.01 run scoreboard players operation #목표지점 jongs.ranged_weapons.y -= @s jongs.ranged_weapons.y
execute store result storage jongs:ranged_weapons bomb.z float 0.01 run scoreboard players operation #목표지점 jongs.ranged_weapons.z -= @s jongs.ranged_weapons.z
$execute anchored eyes positioned ^ ^ ^ anchored feet run return run function jongs:ranged_weapons/player/bomb/summon/$(summon_type) with storage jongs:ranged_weapons bomb 