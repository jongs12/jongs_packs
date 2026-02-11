execute if entity @s[tag=jongs.rinne.using_sword] run function jongs:rinne/use_item/on_mainhand/sword/end
execute if entity @s[tag=jongs.rinne.using_mace] run function jongs:rinne/use_item/on_mainhand/mace/end
execute if entity @s[tag=jongs.rinne.using_spear] run function jongs:rinne/use_item/on_mainhand/spear/end
execute if entity @s[tag=jongs.rinne.using_trident] run function jongs:rinne/use_item/on_mainhand/trident/end
execute if entity @s[tag=jongs.rinne.using_shield] run function jongs:rinne/use_item/on_mainhand/shield/end
return run scoreboard players set @s jongs.rinne.hold 0