scoreboard players set @s jongs_raycasting_success -1
function jongs:raycasting/calculate
tellraw @s [{"translate":"jongs.raycasting.too_far","color":"dark_red"}, {"text":" ("}, {"score":{"name":"정수","objective":"jongs_raycasting_distance"},"bold":false}, {"text":".","bold":false}, {"score":{"name":"소수","objective":"jongs_raycasting_distance"},"bold":false}, {"translate":"jongs.raycasting.meter_plus"}, {"text":")"}]
scoreboard players operation @s jongs_raycasting_rangefinder_cooldown = 거리측정_쿨타임 jongs_raycasting_rangefinder_cooldown