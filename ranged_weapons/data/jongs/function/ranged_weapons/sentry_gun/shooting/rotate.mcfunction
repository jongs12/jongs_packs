playsound minecraft:entity.firework_rocket.blast_far player @a ~ ~ ~ 3 0.9
rotate @s facing entity @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] eyes
$function jongs:ranged_weapons/sentry_gun/shooting/remove_tags {limit:$(limit)}