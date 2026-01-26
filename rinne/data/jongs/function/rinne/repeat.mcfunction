execute as @a[scores={jongs.rinne.click=1}] run scoreboard players set @s jongs.rinne.hold 1
execute as @a unless score @s jongs.rinne.click matches 1 run function jongs:rinne/dash/release
execute as @a[scores={jongs.rinne.click=-1}] at @s run function jongs:rinne/metamorphosis/wand
execute as @a run scoreboard players set @s jongs.rinne.click 0
execute as @a[nbt={OnGround:true},scores={jongs.rinne.ground=..0}] run function jongs:rinne/item_change/ground
execute as @a[nbt={OnGround:false},scores={jongs.rinne.ground=1..}] run function jongs:rinne/item_change/no_ground