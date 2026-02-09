scoreboard players set @s jongs.rinne.click 1
advancement revoke @s only jongs:rinne/use_wand
execute if score @s jongs.rinne.hold matches 0 run function jongs:rinne/use_item/on_mainhand/start
execute if predicate jongs:rinne/player/holding/mace anchored eyes positioned ^ ^ ^ anchored feet if block ^ ^ ^2 #jongs:rinne/can_penetrate run return run tp ^ ^ ^2
return 0