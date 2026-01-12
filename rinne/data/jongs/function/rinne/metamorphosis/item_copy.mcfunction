summon minecraft:item ~ ~ ~ {Invulnerable:true,PickupDelay:0,Tags:["jongs_rinne_temp"],Item:{id:stone,components:{max_stack_size:1}}}
$item replace entity @e[limit=1,type=item,tag=jongs_rinne_temp] contents from entity @s $(slot)
tag @e[limit=1,type=item,tag=jongs_rinne_temp] remove jongs_rinne_temp