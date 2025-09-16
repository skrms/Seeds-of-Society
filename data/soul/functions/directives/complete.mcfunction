execute unless score #active codex.timer matches 1 run return 0
data modify storage codex:core ledger.tmp.outcome set value "complete"
function codex:ledger/append

execute if score #rar codex.timer matches 1 run give @s experience_bottle 3
execute if score #rar codex.timer matches 2 run give @s golden_apple 1
execute if score #rar codex.timer matches 3 run give @s diamond 2

title @s title [{"text":"DIRECTIVE COMPLETE","color":"aqua"}]
tellraw @s [{"text":"Boon granted.","color":"green"}]
scoreboard players set #active codex.timer 0
scoreboard players set #remain codex.timer 0
bossbar set codex:directive value 0
bossbar set codex:directive name "Directive — None"
