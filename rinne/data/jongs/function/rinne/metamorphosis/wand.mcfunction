function jongs:rinne/drop_item/copy {slot:"weapon.mainhand"}
function jongs:rinne/give_item/mace
execute if entity @s[tag=jongs.rinne.no_wand] run return run tag @s remove jongs.rinne.no_wand
return 0