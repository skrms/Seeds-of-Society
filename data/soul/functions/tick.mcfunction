# Global heartbeat
function soul:recursion/curse_check
# (Optional) random directive assignment throttled by your own gating
# function soul:directives/give_random

# Initialize players who just joined (or who were never tagged)
execute as @a[tag=!soul_init] run function soul:init_player

# Detect a new death by comparing deathCount > lastDeathCount
execute as @a if score @s deathCount > @s lastDeathCount run function soul:recursion/on_death

# 1 Minecraft day counter (20 ticks/sec * 60 sec * 20 min = 24000)
execute store result score @a soul.time run time query daytime

# Keep-inventory timer (if active)
execute as @a[scores={book.keepinv_timer=1..}] at @s run function soul:rituals/toggle_keep_inventory

# Check every tick for event status
execute as @a run function soul:player_event_router