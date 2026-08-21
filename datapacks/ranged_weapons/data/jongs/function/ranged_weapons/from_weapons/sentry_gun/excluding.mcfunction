execute if entity @s[type=minecraft:player,gamemode=!survival,gamemode=!adventure] run return run tag @s add jongs.ranged_weapons.do_not_target
scoreboard players set #제외대상 jongs.ranged_weapons.load_sound 0
execute if entity @s[type=#jongs:ranged_weapons/can_be_tamed] on owner if entity @s[tag=jongs.ranged_weapons.shooter] run scoreboard players set #제외대상 jongs.ranged_weapons.load_sound 1
execute if score #제외대상 jongs.ranged_weapons.load_sound matches 0 on passengers if entity @s[tag=jongs.ranged_weapons.shooter] run scoreboard players set #제외대상 jongs.ranged_weapons.load_sound 1
execute if score #제외대상 jongs.ranged_weapons.load_sound matches 0 on leasher if entity @s[tag=jongs.ranged_weapons.shooter] run scoreboard players set #제외대상 jongs.ranged_weapons.load_sound 1
execute if score #제외대상 jongs.ranged_weapons.load_sound matches 0 run return 0
return run tag @s add jongs.ranged_weapons.do_not_target