$damage @s $(damage) minecraft:fireworks at ~ ~ ~
execute unless predicate jongs:orbital_strike/no_vehicle run ride @s dismount
return run scoreboard players reset @s jongs.orbital_strike.damage