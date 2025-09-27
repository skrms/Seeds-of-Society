# Soul :: curse/recall
# Triggered when a cursed player reaches 5 deaths

# FX: warn + blind + resistance for the teleport chaos
title @s actionbar {"text":"The recursion snaps you back.","color":"dark_aqua"}
effect give @s minecraft:blindness 3 0 true
effect give @s minecraft:resistance 5 4 true
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 1.2

# Teleport: scatter the player somewhere “else”
# Center (0,0), spread 256–2048 blocks; tweak as you like
spreadplayers 0 0 256 2048 false @s

# Particles for style points
particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0.6 0.6 0.02 50 force @s

# Reset the death counter, increment recursions
scoreboard players set @s soul.deaths 0
scoreboard players add @s soul.recursions 1

# Mild recovery
effect give @s minecraft:regeneration 6 1 true
effect give @s minecraft:absorption 10 2 true

tellraw @s {"text":"[Codex] Five echoes spent. Be elsewhere, and be wiser.","color":"aqua"}
