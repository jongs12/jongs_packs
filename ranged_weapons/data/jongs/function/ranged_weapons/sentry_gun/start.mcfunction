scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set @s jongs.ranged_weapons.cooldown.sentry_gun 14
playsound minecraft:item.mace.smash_air @a ~ ~ ~ 1 0.8
summon minecraft:mannequin ~ ~ ~ {attributes:[{id:"minecraft:scale",base:0.5},{id:"minecraft:knockback_resistance",base:1}],equipment:{head:{id:"minecraft:grindstone",count:1}},profile:{texture:"block/black_concrete"},pose:"crouching",hide_description:true}