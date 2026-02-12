item replace entity @s weapon.mainhand with diamond_sword[\
minecraft:item_model="jongs:rinne/rinne_wand",\
minecraft:custom_data={jongs:[{purpose:"rinne.exclusive"},{purpose:"rinne.wand"}]},\
minecraft:lore=[[{"translate":"jongs.rinne.nakiso",color:"blue"},{"translate":"jongs.rinne.s_song",color:"dark_gray"}]],\
minecraft:tooltip_display={hidden_components:["minecraft:attribute_modifiers", "minecraft:enchantments", "minecraft:unbreakable"]},\
minecraft:damage_resistant={types:"#jongs:rinne/all"},\
minecraft:unbreakable={},\
minecraft:rarity=epic,\
minecraft:minimum_attack_charge=1,\
\
minecraft:attribute_modifiers=[{amount:9.0d,id:"jongs:rinne.mainhand.attack_damage",slot:"mainhand",type:"minecraft:attack_damage",operation:"add_value"},{amount:4.0d,id:"jongs:rinne.mainhand.attack_speed",slot:"mainhand",type:"minecraft:attack_speed",operation:"add_multiplied_base"}],\
minecraft:attack_range={max_reach:9,max_creative_reach:9,hitbox_margin:0.5},\
minecraft:enchantments={"minecraft:sweeping_edge":9,"minecraft:looting":3,"minecraft:breach":7,"minecraft:vanishing_curse":1},\
minecraft:use_effects={can_sprint:true,speed_multiplier:0.85},\
minecraft:weapon={item_damage_per_attack:0, disable_blocking_for_seconds:10},\
minecraft:tool={default_mining_speed:1,damage_per_block:0,can_destroy_blocks_in_creative:false,rules:[]},\
\
minecraft:custom_name=[{"text":"☆","color":"yellow","italic":false,"click_event":{"action":"open_url","url":"https://youtu.be/3iUgKH8c7p4"}}, {"translate":"jongs.rinne.i","color":"light_purple"}, {"translate":"jongs.rinne.ma","color":"white"}, {"translate":"jongs.rinne.su","color":"light_purple"}, {"translate":"jongs.rinne.gu","color":"white"}, {"translate":"jongs.rinne.rin","color":"light_purple"}, {"translate":"jongs.rinne.ne","color":"white"}, {"text":"▽","color":"yellow"}],\
minecraft:consumable={consume_seconds:2147483647,animation:bow,sound:{sound_id:""},has_consume_particles:false}\
]