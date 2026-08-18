summon minecraft:item ~ ~ ~ {Invulnerable:true,PickupDelay:0,Tags:["jongs.ranged_weapons.summoned"],Item:{id:stone,components:{max_stack_size:1}}}
item replace entity @e[type=item,tag=jongs.ranged_weapons.summoned,limit=1] contents from entity @s weapon.mainhand
tag @e[type=item,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with minecraft:air
return run function jongs:ranged_weapons/reload/start with entity @s SelectedItem.components."minecraft:custom_data".jongs[{"purpose":"ranged_weapons.can_reload"}]