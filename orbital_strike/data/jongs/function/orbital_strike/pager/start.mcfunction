advancement revoke @s only jongs:orbital_strike/throw
item modify entity @s weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
playsound minecraft:entity.snowball.throw player @a ~ ~ ~ 1 0.5
execute store result score #위치.x jongs.orbital_strike.position run data get entity @s Pos[0] 100
execute store result score #위치.y jongs.orbital_strike.position run data get entity @s Pos[1] 100
execute store result score #위치.z jongs.orbital_strike.position run data get entity @s Pos[2] 100
summon minecraft:marker ^ ^ ^1.5 {Tags:["jongs.orbital_strike.motion"]}
execute as @e[type=minecraft:marker,tag=jongs.orbital_strike.motion,limit=1] run function jongs:orbital_strike/pager/set_motion
execute store result storage jongs:orbital_strike x float 0.01 run scoreboard players operation #변화.x jongs.orbital_strike.position -= #위치.x jongs.orbital_strike.position
execute store result storage jongs:orbital_strike y float 0.01 run scoreboard players operation #변화.y jongs.orbital_strike.position -= #위치.y jongs.orbital_strike.position
execute store result storage jongs:orbital_strike z float 0.01 run scoreboard players operation #변화.z jongs.orbital_strike.position -= #위치.z jongs.orbital_strike.position
execute anchored eyes positioned ^ ^ ^ anchored feet run return run function jongs:orbital_strike/pager/summon with storage jongs:orbital_strike