execute unless data storage codex:core ledger.entries run data modify storage codex:core ledger.entries set value []
data modify storage codex:core ledger.tmp set value {}
data modify storage codex:core ledger.tmp.id set from storage codex:core directive.active.id
data modify storage codex:core ledger.tmp.text set from storage codex:core directive.active.text
data modify storage codex:core ledger.tmp.rarity set from storage codex:core directive.active.rarity
data modify storage codex:core ledger.tmp.time set from storage codex:core directive.active.time
data modify storage codex:core ledger.tmp.pos set from entity @s Pos
execute store result storage codex:core ledger.tmp.day int 1 run time query day
execute store result storage codex:core ledger.tmp.daytime int 1 run time query daytime
execute store result storage codex:core ledger.tmp.gametime int 1 run time query gametime
data modify storage codex:core ledger.entries append from storage codex:core ledger.tmp
execute store result score #len codex.timer run data get storage codex:core ledger.entries
execute if score #len codex.timer matches 51.. run data remove storage codex:core ledger.entries[0]
tellraw @s [{"text":"Ledger: ","color":"gray"},{"storage":"codex:core","nbt":"ledger.tmp.outcome","color":"white"},{"text":" — ","color":"gray"},{"storage":"codex:core","nbt":"ledger.tmp.text","color":"yellow"}]
