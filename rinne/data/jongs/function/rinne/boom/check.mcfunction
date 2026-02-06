advancement revoke @s only jongs:rinne/boom
scoreboard players set @s jongs.rinne.click 1
execute unless score @s jongs.rinne.hold matches 1 run return run function jongs:rinne/boom/start
return 0