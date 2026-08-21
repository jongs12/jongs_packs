advancement revoke @s only jongs:ranged_weapons/shooting/bomb
scoreboard players set @s jongs.ranged_weapons.click 1
execute if entity @s[tag=jongs.ranged_weapons.ready] run return 0
execute store result score @s jongs.ranged_weapons.x run data get entity @s Pos[0] 100
execute store result score @s jongs.ranged_weapons.y run data get entity @s Pos[1] 100
execute store result score @s jongs.ranged_weapons.z run data get entity @s Pos[2] 100
tag @s add jongs.ranged_weapons.ready
return run schedule function jongs:ranged_weapons/player/bomb/check 1t append