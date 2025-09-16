scoreboard players add #g codex.tick 1

execute as @a if score @s codex.cd matches 1.. run scoreboard players remove @s codex.cd 1
execute as @a if score @s codex.cd matches 1.. run title @s actionbar [{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"codex.cd"}}]

execute if score #active codex.timer matches 1 if score #remain codex.timer matches 1.. run scoreboard players remove #remain codex.timer 1
execute if score #active codex.timer matches 1 store result bossbar codex:directive value run scoreboard players get #remain codex.timer
execute if score #active codex.timer matches 1 if score #remain codex.timer matches ..0 run function codex:directives/fail

execute as @a if predicate codex:holding_directive_log if score @s codex.cd matches ..0 if score #active codex.timer matches 0 run function codex:directives/_draw

# Triggers
execute as @a[scores={codex.ledger=1..}] run function codex:ledger/show
execute as @a[scores={codex.ledger=1..}] run scoreboard players set @s codex.ledger 0
execute as @a[scores={codex.book=1..}] run function codex:ledger/snapshot
execute as @a[scores={codex.book=1..}] run scoreboard players set @s codex.book 0
