execute if score @s jongs.ranged_weapons.hold matches 90.. run return run function jongs:ranged_weapons/from_weapons/orbital_strike/start
execute if entity @s[tag=jongs.ranged_weapons.rotating] run rotate @s ~-3 ~
execute if entity @s[tag=jongs.ranged_weapons.dropping] run tp @s ~ ~-4 ~ ~9 ~
return run scoreboard players add @s jongs.ranged_weapons.hold 1