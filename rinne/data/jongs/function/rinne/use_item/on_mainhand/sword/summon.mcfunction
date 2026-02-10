playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 2 1.1
playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 2 0.9
$summon minecraft:spectral_arrow ^ ^ ^ {Owner:$(UUID),Motion:[$(x),$(y),$(z)],pickup:0,Duration:200,NoGravity:true,Tags:["jongs.rinne.magic_arrow"],Rotation:[0,90]}
return run scoreboard players set @s jongs.rinne.hold 1