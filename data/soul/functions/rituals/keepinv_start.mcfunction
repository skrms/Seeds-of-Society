# Soul :: rituals/keepinv_start
# TEMPORARY keepInventory ritual (singleplayer-friendly)
# Starts a 5-day timer (5 * 24000 ticks). While the timer > 0, gamerule keepInventory = true.

# Set the timer (per-world). If you need per-player later, we’ll simulate via inventory capture.
scoreboard players set #world soul.keepinv_timer 120000

# Flip the gamerule on (global)
gamerule keepInventory true

tellraw @a {"text":"[Ritual] Keep Inventory bound for 5 days.","color":"gold"}
