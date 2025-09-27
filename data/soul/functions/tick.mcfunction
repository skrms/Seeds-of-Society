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

# Run the rite when a player triggers it
# At current the player can use "/trigger soul.rite_anchor" in chat to set the safety net
execute as @a[scores={soul.rite_anchor=1..}] run function soul:recursion/anchor/rite_mark_anchor
execute as @a[scores={soul.rite_anchor=1..}] run scoreboard players set @s soul.rite_anchor 0

# Altar-based rite (optional replacement for trigger):
execute as @a[nbt={Pose:{}}] if entity @s[nbt={SelectedItemOffhand:{id:"minecraft:echo_shard"}}] if block ~ ~-1 ~ minecraft:lodestone if block ~1 ~ ~ minecraft:candle[candles=1,lit=true] if block ~-1 ~ ~ minecraft:candle[candles=1,lit=true] if block ~ ~ ~1 minecraft:candle[candles=1,lit=true] if block ~ ~ ~-1 minecraft:candle[candles=1,lit=true] if entity @s[nbt={Pose:{}}] positioned ~ ~ ~ run function soul:recursion/anchor/rite_mark_anchor

# Central event checker
execute as @a run function soul:player_event_router
