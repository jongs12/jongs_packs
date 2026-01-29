scoreboard players set @s jongs.ranged_weapons.reload 0
scoreboard players set @s jongs.ranged_weapons.cooldown.sentry_gun 14
playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 0.9 0.8
summon minecraft:mannequin ~ ~ ~ {attributes:[{id:"minecraft:scale",base:0.5},{id:"minecraft:armor",base:20},{id:"minecraft:armor_toughness",base:20}],profile:{texture:"block/blackstone"},pose:"crouching",immovable:true,hide_description:true,Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:grindstone"},brightness:{block:15,sky:0},transformation:{right_rotation:[0,0,0,1],scale:[0.8,0.8,0.8],left_rotation:[0,0,0,1],translation:[-0.4,-0.4,-0.4]},Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.long_lasting","jongs.ranged_weapons.installed_turret"]}]}
scoreboard players operation @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
execute as @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] on vehicle run rotate @s ~ 0
return run tag @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned