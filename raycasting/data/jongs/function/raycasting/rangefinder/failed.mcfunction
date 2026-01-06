scoreboard players operation @s jongs_raycasting_distance -= 거리제한 jongs_raycasting_distance
scoreboard players operation 정수 jongs_raycasting_distance = @s jongs_raycasting_distance
scoreboard players operation 정수 jongs_raycasting_distance /= 상수_10 jongs_raycasting_distance
scoreboard players operation 소수 jongs_raycasting_distance = @s jongs_raycasting_distance
scoreboard players operation 소수 jongs_raycasting_distance %= 상수_10 jongs_raycasting_distance
tellraw @s [{"translate":"jongs.raycasting.too_far","color":"dark_red"}, {"text":" ("}, {"score":{"name":"정수","objective":"jongs_raycasting_distance"},"bold":false}, {"text":".","bold":false}, {"score":{"name":"소수","objective":"jongs_raycasting_distance"},"bold":false}, {"translate":"jongs.raycasting.meter_plus"}, {"text":")"}]