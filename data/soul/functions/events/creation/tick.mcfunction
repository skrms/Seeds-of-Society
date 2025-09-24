# Optional throttle counter if you later want per-second pacing
scoreboard players add #tick soul.tick 1

# Each anchor performs a small spreading pulse
execute as @e[type=marker,tag=creation_anchor] at @s run function soul:events/creation/spread_from_anchor
