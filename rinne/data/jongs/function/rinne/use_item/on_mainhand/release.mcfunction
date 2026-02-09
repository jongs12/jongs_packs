execute if entity @s[tag=jongs.rinne.using_sword] run function jongs:rinne/use_item/on_mainhand/sword/end
execute if entity @s[tag=jongs.rinne.using_mace] run function jongs:rinne/use_item/on_mainhand/mace/end
execute if entity @s[tag=jongs.rinne.using_trident] run function jongs:rinne/use_item/on_mainhand/trident/end
return run scoreboard players set @s jongs.rinne.hold 0