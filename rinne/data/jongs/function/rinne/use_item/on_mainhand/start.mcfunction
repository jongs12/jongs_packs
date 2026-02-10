execute unless predicate jongs:rinne/item/face/head run return run function jongs:rinne/use_item/back_to_owner {slot:"weapon.mainhand"}
execute if predicate jongs:rinne/player/holding/sword run function jongs:rinne/use_item/on_mainhand/sword/one_time
execute if predicate jongs:rinne/player/holding/mace run function jongs:rinne/use_item/on_mainhand/mace/one_time
execute if predicate jongs:rinne/player/holding/trident run function jongs:rinne/use_item/on_mainhand/trident/one_time
execute if predicate jongs:rinne/player/holding/shield run function jongs:rinne/use_item/on_mainhand/shield/one_time
return run function jongs:rinne/use_item/remove_effects