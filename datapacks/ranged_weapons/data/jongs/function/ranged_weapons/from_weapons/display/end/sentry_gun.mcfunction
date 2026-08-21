summon minecraft:mannequin ^ ^ ^ {attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:scale",base:0.5},{id:"minecraft:oxygen_bonus",base:1024},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:explosion_knockback_resistance",base:1},{id:"minecraft:armor",base:0},{id:"minecraft:armor_toughness",base:0}], \
Health:100,profile:{texture:"block/blackstone"},pose:"crouching",immovable:false,hide_description:true,Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:grindstone"},brightness:{block:3,sky:15}, \
transformation:{right_rotation:[0,0,0,1],scale:[0.8,0.8,0.8],left_rotation:[0,0,0,1],translation:[-0.4,-0.4,-0.4]},data:{jongs:[{purpose:"ranged_weapons.from_weapons",path:"sentry_gun"}]},Tags:["jongs.ranged_weapons.summoned","jongs.ranged_weapons.from_weapons"] }] }
scoreboard players operation @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] jongs.ranged_weapons.player_id = @s jongs.ranged_weapons.player_id
tag @e[type=minecraft:block_display,tag=jongs.ranged_weapons.summoned,limit=1] remove jongs.ranged_weapons.summoned
playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 5 1
return run kill @s