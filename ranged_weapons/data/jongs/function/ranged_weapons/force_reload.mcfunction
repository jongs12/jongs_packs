item modify entity @s weapon.offhand {"function":"minecraft:set_damage","damage":0}
summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:{id:stone,components:{custom_data:{jongs:[{purpose:"ranged_weapons_temp"}]}}}}
item replace entity @e[limit=1,type=item,predicate=jongs:ranged_weapons/is_temp_copy_item] contents from entity @s weapon.offhand
data modify entity @n[type=minecraft:item] Invulnerable set value true
item replace entity @s weapon.offhand with air