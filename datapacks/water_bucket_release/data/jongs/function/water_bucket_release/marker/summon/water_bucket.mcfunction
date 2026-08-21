execute unless predicate jongs:water_bucket_release/is_nether run return run setblock ~ ~ ~ minecraft:water destroy
playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 1 1 0
return run particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0 10 normal