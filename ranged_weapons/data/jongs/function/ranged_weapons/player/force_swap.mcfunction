scoreboard players set @s jongs.ranged_weapons.reload 0
execute if predicate jongs:ranged_weapons/returning/sticky_mine run function jongs:ranged_weapons/sticky_mine/force_return/find_mines
execute if predicate jongs:ranged_weapons/returning/sentry_gun run say testing_swap
summon minecraft:item ~ ~ ~ {Invulnerable:true,PickupDelay:0,Tags:["jongs.ranged_weapons.temp"],Item:{id:stone,components:{max_stack_size:1}}}
item replace entity @e[limit=1,type=item,tag=jongs.ranged_weapons.temp] contents from entity @s weapon.mainhand
tag @e[limit=1,type=item,tag=jongs.ranged_weapons.temp] remove jongs.ranged_weapons.temp
item replace entity @s weapon.mainhand from entity @s weapon.offhand
return run item replace entity @s weapon.offhand with air