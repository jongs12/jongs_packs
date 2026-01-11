item modify entity @s weapon.offhand {"function":"minecraft:set_damage","damage":0}
summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:{id:stone,components:{damage_resistant:{types:"#jongs:ranged_weapons/all"},custom_data:{jongs:[{purpose:"ranged_weapons_temp"}]}}}}
item replace entity @e[limit=1,type=item,predicate=jongs:ranged_weapons/is_temp_copy_item] contents from entity @s weapon.offhand
item replace entity @s weapon.offhand with air