# Soul Admin Reset
# Emergency backdoor if recursion/rituals break

tellraw @a {"text":"[Soul Admin] Hard reset triggered.","color":"red"}

# Wipe everything Codex-related
scoreboard objectives remove directives
scoreboard objectives remove deaths
scoreboard objectives remove essence

# Re-add fresh ones
scoreboard objectives add directives dummy
scoreboard objectives add deaths dummy
scoreboard objectives add essence dummy

tag @a remove codex_active
tag @a remove recursion_curse
