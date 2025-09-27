# soul:recursion/anchor/rite_mark_anchor
# Components: 1 echo shard + 4 candles + 8 amethyst shards
# If present, consume them and place a single global anchor at the player's feet.

# --- Check & consume components safely ---
# We use /clear twice: first as a dry-run counter, then actually consume if all are present

# Count echo shards
execute store result score @s _c_echo run clear @s minecraft:echo_shard 0
# Count candles
execute store result score @s _c_candles run clear @s minecraft:candle 0
# Count amethyst shards
execute store result score @s _c_amy run clear @s minecraft:amethyst_shard 0

# Guard: require >=1 echo, >=4 candles, >=8 amethyst
execute unless score @s _c_echo matches 1.. run function soul:recursion/anchor/rite_fail
execute unless score @s _c_candles matches 4.. run function soul:recursion/anchor/rite_fail
execute unless score @s _c_amy matches 8.. run function soul:recursion/anchor/rite_fail

# Consume exact amounts
clear @s minecraft:echo_shard 1
clear @s minecraft:candle 4
clear @s minecraft:amethyst_shard 8

# --- Replace existing anchor (limit one; global) ---
kill @e[type=marker,tag=soul_anchor]

# Summon the new anchor in the Overworld at player's location (snapped to center)
execute in overworld run summon marker ~ ~ ~ {Tags:["soul_anchor"]}
execute in overworld run tp @e[type=marker,tag=soul_anchor,limit=1,sort=nearest] ~0.5 ~ ~0.5

# --- Ceremony (FX) ---
playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.8 1.3
particle minecraft:enchant ~ ~1 ~ 1 1 1 0.05 120 force @a[distance=..32]
particle minecraft:reverse_portal ~ ~1 ~ 0.8 1.2 0.8 0.2 80 force @a[distance=..32]
title @s actionbar {"text":"Rite sealed. Anchor marked.","color":"#9AE6FF","italic":true}
