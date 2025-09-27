# soul:recursion/teleport_player
# Codex yanks the player after 5 deaths. Flavor + safety + reset.

# --- Safety net so we don’t insta-chain-death ---
# Brief invulnerability window
effect give @s minecraft:resistance 6 4 true
# If they’re in lava or fire, give a little grace
effect give @s minecraft:fire_resistance 6 0 true

# --- Cinematic sting ---
title @s times 10 40 20
title @s title {"text":"RECURSION BREACH","color":"#7A00FF","bold":true}
title @s subtitle {"text":"the Codex pulls you sideways","color":"#A885FF","italic":true}

# Soundscape: low boom + arcane fizz + soul hush
playsound minecraft:entity.warden.listening_angry player @s ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 1.4
playsound minecraft:ambient.soul_sand_valley.mood player @s ~ ~ ~ 0.6 0.9

# Particle veil on the current spot
particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 80 force @s
particle minecraft:portal ~ ~1 ~ 1 1 1 0.1 120 force @s

# --- Darkness → Blink → Slowfall landing ---
effect give @s minecraft:darkness 3 0 true
effect give @s minecraft:nausea 4 0 true
effect give @s minecraft:slowness 4 1 true
effect give @s minecraft:slow_falling 7 0 true
effect give @s minecraft:levitation 1 0 true

# --- Destination logic (Anchor-first) ---

# If an anchor exists, yank the player there (Overworld), else use spreadplayers
execute if entity @e[type=marker,tag=soul_anchor,limit=1] run execute as @s at @e[type=marker,tag=soul_anchor,limit=1] in overworld run tp @s ~ ~2 ~
execute unless entity @e[type=marker,tag=soul_anchor,limit=1] run execute in overworld run spreadplayers 0 0 16 64 false @s

# Default: spread near world spawn (adjust center/range to taste).
# This gives a safe-ish drop zone and avoids lava/void checks the easy way.
# min=16 max=64 keeps it within a ring so it feels “nearby but shifted.”
execute in overworld run spreadplayers 0 0 16 64 false @s

# Nudge up a little to avoid head-in-wall on trees/cliffs
tp @s ~-1500 ~2 ~1000

# Destination sting
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.2
particle minecraft:reverse_portal ~ ~1 ~ 1 1 1 0.2 100 force @s

# --- Debuff of Memory (light penalty) ---
# The Codex “tax” so it’s not completely free
effect give @s minecraft:weakness 25 0 true
effect give @s minecraft:mining_fatigue 25 0 true

# --- Messaging / telemetry ---
# Actionbar ping
title @s actionbar {"text":"Recursion resets at five. Thread spliced.","color":"#C9A7FF"}

# Trigger an advancement hook (create this advancement later)
advancement grant @s only soul:recursion/broke_loop

# Optional: scoreboard hook for analytics / pacing
# (Uncomment if you’ve made this objective)
# scoreboard players add @s recursionCycles 1

# --- Reset death counter so the cycle can repeat cleanly ---
scoreboard players set @s recursionDeaths 0

