summon minecraft:item ~ ~ ~ {PickupDelay:0,Tags:["jongs_rinne_temp"],Item:{id:stone,components:{max_stack_size:1}}}
$item replace entity @e[limit=1,type=item,tag=jongs_rinne_temp] contents from entity @s $(slot)
data modify entity @e[limit=1,type=item,tag=jongs_rinne_temp] Invulnerable set value true
tag @e[limit=1,type=item,tag=jongs_rinne_temp] remove jongs_rinne_temp