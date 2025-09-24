# soul:directives/tick
# Ultra-light checks: e.g., actionbar hints, simple score gates.

# Example: show hint the moment a player is unassigned (state == 0)
execute if score @s soul.directive_state matches ..0 run title @s actionbar {"text":"Awaiting directive...", "color":"#8EE5FF"}
