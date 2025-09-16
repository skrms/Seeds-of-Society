execute unless data storage codex:core directive.pool run return 0
data modify storage codex:core directive.active set from storage codex:core directive.pool[0]
execute store result score #remain codex.timer run data get storage codex:core directive.active.time
scoreboard players set #rar codex.timer 1
execute if score #remain codex.timer matches 901.. run scoreboard players set #rar codex.timer 2
execute if score #remain codex.timer matches 1201.. run scoreboard players set #rar codex.timer 3
scoreboard players set #active codex.timer 1
execute store result bossbar codex:directive max run data get storage codex:core directive.active.time
bossbar set codex:directive value 0
bossbar set codex:directive name {"storage":"codex:core","nbt":"directive.active.text"}
title @s title [{"text":"NEW DIRECTIVE","color":"gold"}]
tellraw @s [{"text":"• ","color":"gray"},{"storage":"codex:core","nbt":"directive.active.text","color":"white"}]
data modify storage codex:core directive.pool append from storage codex:core directive.pool[0]
data remove storage codex:core directive.pool[0]
