execute if items entity @s weapon.mainhand *[unbreakable={}] run return run \
item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"!minecraft:unbreakable":{},"minecraft:enchantment_glint_override":false}}
item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:damage":0,"minecraft:unbreakable":{},"minecraft:enchantment_glint_override":true}}
return run xp add @s 12000 points