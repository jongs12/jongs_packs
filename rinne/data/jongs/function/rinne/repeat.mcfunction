execute as @a if score @s jongs.rinne.click matches 1 run scoreboard players set @s jongs.rinne.hold 1
execute as @a unless score @s jongs.rinne.click matches 1 run function jongs:rinne/dash/release
execute as @a if score @s jongs.rinne.click matches -1 at @s run function jongs:rinne/metamorphosis/wand
execute as @a run scoreboard players set @s jongs.rinne.click 0
execute as @a[nbt={OnGround:true}] if score @s jongs.rinne.ground matches ..0 run function jongs:rinne/item_change/ground
execute as @a[nbt={OnGround:false}] if score @s jongs.rinne.ground matches 1.. run function jongs:rinne/item_change/no_ground