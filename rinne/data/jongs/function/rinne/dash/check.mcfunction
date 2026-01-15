scoreboard players set @s jongs.rinne.click 1
execute unless score @s jongs.rinne.hold matches 1 run function jongs:rinne/dash/start
function jongs:rinne/dash/process
advancement revoke @s only jongs:rinne/dash