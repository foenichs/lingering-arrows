# Summons effect cloud when tipped arrow lands
execute as @e[type=arrow,nbt={inGround:1b,item:{id:"minecraft:tipped_arrow"}}] at @s run summon area_effect_cloud ~ ~ ~ {RadiusOnUse:-0,Duration:60}

# Changes the cloud to the arrows potion effect
execute as @e[type=area_effect_cloud,tag=!lingered] at @s run data modify entity @s potion_contents set from entity @n[type=minecraft:arrow, tag=!lingered] item.components."minecraft:potion_contents"

# Tags the arrow and the cloud as lingered
tag @e[type=area_effect_cloud,tag=!lingered] add lingered
tag @e[type=arrow,nbt={inGround:1b,item:{id:"minecraft:tipped_arrow"}}] add lingered

# Turns the arrow into an normal arrow
execute as @e[type=arrow,tag=lingered] at @s run data modify entity @s item set value {id:"minecraft:arrow"}