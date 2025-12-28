$summon minecraft:item ~ ~ ~ {PickupDelay:$(delay),Item:{id:stone,components:{damage_resistant:{types: "#jongs:rinne/all"},custom_data:{jongs:[{purpose:"temp_copy_item"}]}}}}
$item replace entity @n[type=item,predicate=jongs:rinne/is_temp_copy_item] contents from entity @s $(slot)
$item replace entity @s $(slot) with air