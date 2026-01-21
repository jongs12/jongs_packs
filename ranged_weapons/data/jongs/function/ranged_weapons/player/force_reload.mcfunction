scoreboard players set @s jongs.ranged_weapons.reload 0
item modify entity @s weapon.offhand jongs:ranged_weapons/shoot_very_big
summon minecraft:item ~ ~ ~ {Invulnerable:true,PickupDelay:0,Tags:["jongs.ranged_weapons.temp"],Item:{id:stone,components:{max_stack_size:1}}}
item replace entity @e[limit=1,type=item,tag=jongs.ranged_weapons.temp] contents from entity @s weapon.mainhand
tag @e[limit=1,type=item,tag=jongs.ranged_weapons.temp] remove jongs.ranged_weapons.temp
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air