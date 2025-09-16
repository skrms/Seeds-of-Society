# Global heartbeat
function soul:recursion/curse_check
# (Optional) random directive assignment throttled by your own gating
# function soul:directives/give_random

# 1 Minecraft day counter (20 ticks/sec * 60 sec * 20 min = 24000)
execute store result score @a soul.time run time query daytime

# Keep-inventory timer (if active)
execute as @a[scores={book.keepinv_timer=1..}] at @s run function soul:rituals/toggle_keep_inventory