advancement revoke @s only jongs:rinne/use_wand
execute if score @s jongs.rinne.hold matches 0 run function jongs:rinne/use_item/on_mainhand/start
scoreboard players set @s jongs.rinne.click 1
scoreboard players set @s jongs.rinne.hold 1
execute if items entity @s weapon.mainhand minecraft:mace anchored eyes positioned ^ ^ ^ anchored feet if block ^ ^ ^2.5 #jongs:rinne/can_penetrate run return run tp ^ ^ ^2.5
return 0