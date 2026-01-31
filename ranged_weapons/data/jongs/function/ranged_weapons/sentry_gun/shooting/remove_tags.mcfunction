$tag @e[tag=jongs.ranged_weapons.target,limit=$(limit)] remove jongs.ranged_weapons.target
$tag @e[tag=jongs.ranged_weapons.blocked,limit=$(limit)] remove jongs.ranged_weapons.blocked
tag @s remove jongs.ranged_weapons.owner
execute on vehicle run tag @s remove jongs.ranged_weapons.shooting
return run tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter