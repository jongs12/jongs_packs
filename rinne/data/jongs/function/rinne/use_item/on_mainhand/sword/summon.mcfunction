$summon minecraft:spectral_arrow ^ ^ ^0.5 {Owner:$(UUID),Motion:[$(x),$(y),$(z)],pickup:0,Duration:200,NoGravity:true,Tags:["jongs.rinne.summoned","jongs.rinne.magic_arrow"]}
rotate @e[type=minecraft:spectral_arrow,tag=jongs.rinne.summoned,limit=1] ~ ~
tag @e[type=minecraft:spectral_arrow,tag=jongs.rinne.summoned,limit=1] remove jongs.rinne.summoned
return run scoreboard players set @s jongs.rinne.hold 1