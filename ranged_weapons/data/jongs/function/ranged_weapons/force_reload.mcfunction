scoreboard players set @s jongs_ranged_weapons_reload 0
item modify entity @s weapon.offhand {"function":"minecraft:set_damage","damage":0}
summon minecraft:item ~ ~ ~ {PickupDelay:0,Tags:["jongs_ranged_weapons_temp"],Item:{id:stone,components:{max_stack_size:1}}}
item replace entity @e[limit=1,type=item,tag=jongs_ranged_weapons_temp] contents from entity @s weapon.mainhand
data modify entity @e[limit=1,type=item,tag=jongs_ranged_weapons_temp] Invulnerable set value true
tag @e[limit=1,type=item,tag=jongs_ranged_weapons_temp] remove jongs_ranged_weapons_temp
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air