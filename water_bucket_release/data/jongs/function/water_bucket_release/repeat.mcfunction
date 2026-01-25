execute as @e[type=minecraft:marker,tag=jongs.water_bucket_release.fill,predicate=jongs:water_bucket_release/no_vehicle] at @s run function jongs:water_bucket_release/bucket/replace
execute as @a run scoreboard players operation @s jongs.water_bucket_release.x.pre = @s jongs.water_bucket_release.x.cur
execute as @a store result score @s jongs.water_bucket_release.x.cur run data get entity @s Pos[0] 100
execute as @a run scoreboard players operation @s jongs.water_bucket_release.z.pre = @s jongs.water_bucket_release.z.cur
execute as @a store result score @s jongs.water_bucket_release.z.cur run data get entity @s Pos[2] 100
execute as @a if items entity @s weapon.mainhand minecraft:water_bucket[!minecraft:piercing_weapon] run item modify entity @s weapon.mainhand {"function":"set_components","components":{"minecraft:piercing_weapon":{}}}
execute as @a if items entity @s weapon.mainhand minecraft:water_bucket unless items entity @s weapon.mainhand minecraft:water_bucket[minecraft:enchantments~[{enchantment:"jongs:water_bucket_release/release"}]] run enchant @s jongs:water_bucket_release/release