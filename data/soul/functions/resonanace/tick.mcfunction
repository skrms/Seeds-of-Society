# soul:resonance/tick
# Cheap, passive buffs tied to resonance_level.

# Tier 1: small QoL nudge
execute if score @s soul.resonance_level matches 1 run effect give @s minecraft:luck 2 0 true
# Tier 2: stronger nudge
execute if score @s soul.resonance_level matches 2 run effect give @s minecraft:haste 2 0 true
