scoreboard players remove @s jongs.ranged_weapons.distance 1
execute if score @s jongs.ranged_weapons.distance matches ..28 run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.02 5 normal
execute if score @s jongs.ranged_weapons.distance matches ..10 run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.05 8 normal
execute if score @s jongs.ranged_weapons.distance matches 0.. run return run particle minecraft:small_flame ~ ~ ~ 0.3 0.3 0.3 0.05 2 normal
execute on vehicle run kill @s
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire replace #jongs:ranged_weapons/dashable destroy
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:20,DurationOnUse:0,potion_contents:{custom_effects:[{id:"minecraft:wither",duration:100,amplifier:1,ambient:false,show_particles:true,show_icon:false}]},custom_particle:{type:"minecraft:lava"},potion_duration_scale:1,Radius:1.5,RadiusOnUse:0,RadiusPerTick:0,ReapplicationDelay:3,WaitTime:0}
return run kill @s