execute if score #active codex.timer matches 1 run return 0
function codex:directives/_select_and_announce
execute store result score @s codex.cd run data get storage codex:core directive.active.time
tellraw @s [{"text":"Time allotted: ","color":"gray"},{"storage":"codex:core","nbt":"directive.active.time","color":"yellow"},{"text":" ticks","color":"gray"}]
