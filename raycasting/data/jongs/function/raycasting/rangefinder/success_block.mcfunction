particle minecraft:dust_color_transition{from_color:[0.333,1,0.333],to_color:[0.667,0,0.667],scale:2} ~ ~ ~ 0.05 0.05 0.05 0 3
scoreboard players operation @s jongs_raycasting_distance -= 거리제한 jongs_raycasting_distance
scoreboard players operation 정수 jongs_raycasting_distance = @s jongs_raycasting_distance
scoreboard players operation 정수 jongs_raycasting_distance /= 상수_10 jongs_raycasting_distance
scoreboard players operation 소수 jongs_raycasting_distance = @s jongs_raycasting_distance
scoreboard players operation 소수 jongs_raycasting_distance %= 상수_10 jongs_raycasting_distance
tellraw @s [{"translate":"jongs.raycasting.the_distance_to_the","color":"aqua"}, {"translate":"jongs.raycasting.block","color":"light_purple"}, {"translate":"jongs.raycasting.is","color":"aqua"}, {"score":{"name":"정수","objective":"jongs_raycasting_distance"},"color":"gold","bold":true}, {"text":".","color":"gold","bold":true}, {"score":{"name":"소수","objective":"jongs_raycasting_distance"},"color":"gold","bold":true}, {"translate":"jongs.raycasting.meters","color":"gold","bold":false}, {"translate":"jongs.raycasting.period","color":"aqua"}]