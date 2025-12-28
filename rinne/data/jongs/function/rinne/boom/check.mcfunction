scoreboard players set @s jongs_rinne_click 1
execute unless score @s jongs_rinne_hold matches 1 run function jongs:rinne/boom/start
advancement revoke @s only jongs:rinne/boom