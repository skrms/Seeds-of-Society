# soul:load
# One-time setup on datapack load

# Objectives
scoreboard objectives add deathCount deathCount
scoreboard objectives add lastDeathCount dummy
scoreboard objectives add recursionDeaths dummy

# Rite trigger to mark the anchor
scoreboard objectives add soul.rite_anchor trigger

# Setup scoreboards for directives
scoreboard objectives add directives dummy

#
scoreboard objectives add soul.time dummy
scoreboard objectives add book.bond dummy
scoreboard objectives add book.wax_cd dummy
scoreboard objectives add book.page_cd dummy
scoreboard objectives add book.keepinv_timer dummy
scoreboard objectives add elem.fire dummy
scoreboard objectives add elem.power dummy
scoreboard objectives add elem.water dummy
scoreboard objectives add elem.earth dummy
scoreboard objectives add elem.air dummy
scoreboard objectives add elem.void dummy
scoreboard objectives add elem.mystic dummy
scoreboard objectives add elem.creation dummy

# Namespaced storage
# (Holds book state, accessories, etc.)
data modify storage soul:book state set value {}

# Optional analytics
# scoreboard objectives add recursionCycles dummy

# Clean init for currently online players
# (Prevents false positives on first tick)
execute as @a run function soul:init_player


# --- Micro-scheduler counters (per player) ---
scoreboard objectives add soul.tick60 dummy      # 0..59 → ~3s cycle (at 20 tps)
scoreboard objectives add soul.tick20 dummy      # 0..19 → ~1s cycle

# --- System state (optional, for later) ---
scoreboard objectives add soul.directive_state dummy     # per-player directive phase
scoreboard objectives add soul.resonance_level dummy     # per-player resonance tier

# --- Namespaced storage (global) ---
# Create empty roots if not present; harmless if they already exist
data modify storage soul:state directives set value {}
data modify storage soul:state resonance  set value {}
data modify storage soul:state rituals    set value {}