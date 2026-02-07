item replace entity @s weapon.mainhand with diamond_spear[\
minecraft:item_model="jongs:rinne/rinne_wand",\
minecraft:custom_data={jongs:[{purpose:"rinne.exclusive"},{purpose:"rinne.wand"}]},\
minecraft:lore=[[{"translate":"jongs.rinne.nakiso",color:"blue"},{"translate":"jongs.rinne.s_song",color:"dark_gray"}]],\
minecraft:tooltip_display={hidden_components:["minecraft:attribute_modifiers", "minecraft:enchantments", "minecraft:unbreakable"]},\
minecraft:damage_resistant={types:"#jongs:rinne/all"},\
minecraft:unbreakable={},\
minecraft:rarity=epic,\
minecraft:minimum_attack_charge=1,\
\
minecraft:attribute_modifiers=[{amount:9.0d,id:"jongs:rinne.mainhand.attack_damage",slot:"mainhand",type:"minecraft:attack_damage",operation:"add_value"},{amount:-0.25d,id:"jongs:rinne.mainhand.attack_speed",slot:"mainhand",type:"minecraft:attack_speed",operation:"add_multiplied_base"}],\
minecraft:attack_range={max_reach:9,max_creative_reach:9,hitbox_margin:0.5},\
minecraft:enchantments={"minecraft:knockback":2,"minecraft:lunge":3,"minecraft:looting":3,"minecraft:breach":7,"minecraft:vanishing_curse":1},\
minecraft:use_effects={can_sprint:true,speed_multiplier:1},\
minecraft:weapon={item_damage_per_attack:0, disable_blocking_for_seconds:10},\
\
minecraft:custom_name=[{"text":"☆","color":"yellow","italic":false,"click_event":{"action":"open_url","url":"https://youtu.be/3iUgKH8c7p4"}}, {"translate":"jongs.rinne.i","color":"light_purple"}, {"translate":"jongs.rinne.ma","color":"white"}, {"translate":"jongs.rinne.su","color":"light_purple"}, {"translate":"jongs.rinne.gu","color":"white"}, {"translate":"jongs.rinne.rin","color":"light_purple"}, {"translate":"jongs.rinne.ne","color":"white"}, {"text":"♤","color":"yellow"}],\
minecraft:swing_animation={type:stab,duration:6},\
minecraft:piercing_weapon={deals_knockback:true,dismounts:true,sound:{sound_id:"minecraft:block.amethyst_cluster.hit"},hit_sound:{sound_id:"minecraft:block.amethyst_cluster.break"}},\
minecraft:kinetic_weapon={delay_ticks:0,damage_conditions:{max_duration_ticks:2147483647,min_speed:5,min_relative_speed:5},dismount_conditions:{max_duration_ticks:2147483647,min_speed:5,min_relative_speed:5},knockback_conditions:{max_duration_ticks:2147483647,min_speed:5,min_relative_speed:5},sound:{sound_id:"minecraft:block.amethyst_cluster.hit"},hit_sound:{sound_id:"minecraft:block.amethyst_cluster.break"}}\
]