execute unless predicate jongs:orbital_strike/no_vehicle run return 0
execute if block ~ ~-1 ~ #minecraft:replaceable if block ~ ~-2 ~ #minecraft:replaceable run return run function jongs:orbital_strike/pager/calling/beam
scoreboard players set @s jongs.orbital_strike.duration 10
return run function jongs:orbital_strike/pager/calling/position