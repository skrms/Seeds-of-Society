execute unless score #active codex.timer matches 1 run return 0
data modify storage codex:core ledger.tmp.outcome set value "fail"
function codex:ledger/append

effect give @s slowness 20 1 true
effect give @s weakness 20 0 true
execute if score @s codex.cd matches 0.. run scoreboard players add @s codex.cd 200
execute if score @s codex.cd matches ..-1 run scoreboard players set @s codex.cd 200

title @s title [{"text":"DIRECTIVE FAILED","color":"red"}]
tellraw @s [{"text":"Retribution applied. Reflect and proceed.","color":"dark_red"}]
scoreboard players set #active codex.timer 0
scoreboard players set #remain codex.timer 0
bossbar set codex:directive value 0
bossbar set codex:directive name "Directive — None"
