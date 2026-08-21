item replace entity @s weapon.mainhand with minecraft:diamond_pickaxe[\
minecraft:item_model="jongs:rinne/rinne_wand",\
minecraft:custom_data={jongs:[{purpose:"rinne.exclusive"},{purpose:"rinne.wand"}]},\
minecraft:lore=[[{"translate":"jongs.rinne.original","color":"dark_gray","italic":false, "with":[{"translate":"jongs.rinne.artist","color":"gray"},{"translate":"jongs.rinne.song","color":"blue"}] }]],\
minecraft:tooltip_display={hidden_components:["minecraft:attribute_modifiers", "minecraft:enchantments", "minecraft:unbreakable"]},\
minecraft:damage_resistant={types:"#jongs:rinne/all"},\
minecraft:unbreakable={},\
minecraft:rarity=epic,\
minecraft:minimum_attack_charge=1,\
\
minecraft:attribute_modifiers=[{amount:4.0d,id:"jongs:rinne.mainhand.attack_speed",slot:"mainhand",type:"minecraft:attack_speed",operation:"add_multiplied_base"}],\
minecraft:attack_range={max_reach:9,max_creative_reach:9,hitbox_margin:0},\
minecraft:enchantments={"minecraft:silk_touch":1,"minecraft:vanishing_curse":1},\
minecraft:use_effects={can_sprint:false,speed_multiplier:0.2},\
minecraft:tool={default_mining_speed:60,damage_per_block:0,can_destroy_blocks_in_creative:true,rules:[{blocks:"#minecraft:leaves",correct_for_drops:true},{blocks:"#minecraft:sword_instantly_mines",correct_for_drops:true},{blocks:"minecraft:cobweb",correct_for_drops:true},{blocks:"#minecraft:sword_efficient",correct_for_drops:true},{blocks:"#minecraft:mineable/pickaxe",correct_for_drops:true},{blocks:"#minecraft:mineable/shovel",correct_for_drops:true},{blocks:"#minecraft:mineable/axe",correct_for_drops:true},{blocks:"#minecraft:mineable/hoe",correct_for_drops:true}]},\
\
minecraft:custom_name=[{"text":"『","color":"aqua"},{"translate":"jongs.rinne.shield","color":"light_purple","bold":true,"click_event":{"action":"open_url","url":"https://youtu.be/3iUgKH8c7p4"}, "with":[{"text":"★","color":"yellow","bold":false}] },{"text":"』","color":"aqua"}],\
minecraft:blocks_attacks={block_delay_seconds:0,disable_cooldown_scale:0,damage_reductions:[{base:0,factor:1,horizontal_blocking_angle:100},{base:0,factor:0.25,horizontal_blocking_angle:180}],item_damage:{threshold:0,base:0,factor:0},block_sound:{sound_id:"minecraft:block.amethyst_cluster.place"}}\
]