# soul:directives/tick_3s
# Heavier logic: selection, progress scans, storage reads/writes.

# Example: auto-assign a starter directive if none is set
execute if score @s soul.directive_state matches ..0 run scoreboard players set @s soul.directive_state 1
# Example storage seed (global table you can expand later)
data modify storage soul:state directives.active set value {}
