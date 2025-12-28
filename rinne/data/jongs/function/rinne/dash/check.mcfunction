scoreboard players set @s jongs_rinne_click 1
execute unless score @s jongs_rinne_hold matches 1 run function jongs:rinne/dash/start
function jongs:rinne/dash/process
advancement revoke @s only jongs:rinne/dash