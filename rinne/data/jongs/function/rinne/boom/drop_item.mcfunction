$summon minecraft:item ~ ~ ~ {PickupDelay:$(delay),Item:{id:stone,components:{custom_data:{jongs:[{purpose:"rinne_temp"}]}}}}
$item replace entity @e[limit=1,type=item,predicate=jongs:rinne/is_temp_copy_item] contents from entity @s $(slot)
data modify entity @n[type=minecraft:item] Invulnerable set value true
$item replace entity @s $(slot) with air