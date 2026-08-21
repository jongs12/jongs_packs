item modify entity @s weapon.mainhand {"function":"minecraft:set_count", "count":-1, "add":true}
execute unless items entity @s weapon.mainhand * run return run item replace entity @s weapon.mainhand with minecraft:bucket
return run give @s minecraft:bucket