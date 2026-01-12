execute as @e[type=minecraft:marker,tag=jongs_water_bucket_release_fill] if predicate jongs:water_bucket_release/no_vehicle at @s run function jongs:water_bucket_release/bucket/replace
execute as @a run scoreboard players operation @s jongs_water_bucket_release_x_pre = @s jongs_water_bucket_release_x
execute as @a store result score @s jongs_water_bucket_release_x run data get entity @s Pos[0] 100
execute as @a run scoreboard players operation @s jongs_water_bucket_release_z_pre = @s jongs_water_bucket_release_z
execute as @a store result score @s jongs_water_bucket_release_z run data get entity @s Pos[2] 100
execute as @a if items entity @s weapon.mainhand minecraft:water_bucket[!minecraft:piercing_weapon] run item modify entity @s weapon.mainhand {"function":"set_components","components":{"minecraft:piercing_weapon":{}}}
execute as @a if items entity @s weapon.mainhand minecraft:water_bucket unless items entity @s weapon.mainhand minecraft:water_bucket[minecraft:enchantments~[{enchantment:"jongs:water_bucket_release/release"}]] run enchant @s jongs:water_bucket_release/release