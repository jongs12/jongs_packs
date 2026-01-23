summon minecraft:item ~ ~ ~ {Invulnerable:true,Age:-32768,PickupDelay:0,Tags:["jongs.rinne.temp"],Item:{id:stone,components:{max_stack_size:1}}}
$item replace entity @e[limit=1,type=item,tag=jongs.rinne.temp] contents from entity @s $(slot)
tag @e[limit=1,type=item,tag=jongs.rinne.temp] remove jongs.rinne.temp