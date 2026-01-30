playsound minecraft:entity.firework_rocket.blast_far player @a ~ ~ ~ 3 0.9
particle minecraft:block{block_state:{Name:"minecraft:copper_block"}} ~ ~ ~ 0.2 0.2 0.2 1 3
rotate @s facing entity @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] eyes
$function jongs:ranged_weapons/sentry_gun/shooting/remove_tags {limit:$(limit)}