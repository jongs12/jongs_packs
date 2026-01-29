scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set @s jongs.ranged_weapons.cooldown.sentry_gun 14
playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 0.9 0.8
summon minecraft:mannequin ~ ~ ~ {attributes:[{id:"minecraft:scale",base:0.5},{id:"minecraft:armor",base:30},{id:"minecraft:armor_toughness",base:20}],profile:{texture:"block/black_concrete"},pose:"crouching",immovable:true,hide_description:true}