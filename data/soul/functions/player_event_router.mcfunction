# soul:player_event_router
# Runs once per tick per player. Keep this tight.

# 0) Ensure player is initialized
execute if entity @s[tag=!soul_init] run function soul:init_player

# 1) Death diff → recursion pipeline (you already wired these)
execute if score @s deathCount > @s lastDeathCount run function soul:recursion/on_death

# 2) Micro-scheduler ticks (per player)
scoreboard players add @s soul.tick60 1
execute if score @s soul.tick60 matches 60 run scoreboard players set @s soul.tick60 0

scoreboard players add @s soul.tick20 1
execute if score @s soul.tick20 matches 20 run scoreboard players set @s soul.tick20 0

# 3) Light heartbeat every tick (ultra-cheap checks only)
function soul:directives/tick
function soul:resonance/tick
function soul:rituals/tick

# 4) Heavier work on cadence
execute if score @s soul.tick60 matches 0 run function soul:directives/tick_3s
execute if score @s soul.tick60 matches 0 run function soul:resonance/tick_3s
execute if score @s soul.tick20 matches 0 run function soul:rituals/tick_1s
