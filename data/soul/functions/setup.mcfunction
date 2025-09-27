# Soul :: setup
# One-time objective + tag prep (auto-run via load tag)

# --- Scoreboards ---
# Built-in death counter (do NOT make this dummy)
scoreboard objectives remove soul.deaths
scoreboard objectives add soul.deaths deathCount

# Counts how many times the curse has triggered
scoreboard objectives add soul.recursions dummy

# Timer used for temporary keepInventory (singleplayer-safe for now)
scoreboard objectives add soul.keepinv_timer dummy

# Sanity: remove legacy/dummy objectives you might have created earlier
scoreboard objectives remove directives
scoreboard objectives remove essence

tellraw @a {"text":"[Soul] Active.","color":"aqua"}
