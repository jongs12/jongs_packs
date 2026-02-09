execute as @a[scores={jongs.rinne.click=1}] run scoreboard players set @s jongs.rinne.hold 1
execute as @a[scores={jongs.rinne.click=0}] run function jongs:rinne/use_item/on_mainhand/release
execute as @a run scoreboard players set @s jongs.rinne.click 0
execute as @a[predicate=jongs:rinne/item/wand/mainhand] at @s run function jongs:rinne/metamorphosis/change
execute as @a[predicate=jongs:rinne/item/wand/offhand] at @s run function jongs:rinne/use_item/on_offhand