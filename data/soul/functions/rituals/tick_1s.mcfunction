# soul:rituals/tick_1s
# Medium-cost: block layouts, item counts, marker lookups (like your Anchor).

# Example: Anchor integrity ping (exists? glow the marker briefly)
execute if entity @e[type=marker,tag=soul_anchor,limit=1] run effect give @e[type=marker,tag=soul_anchor,limit=1,sort=nearest] minecraft:glowing 2 0 true
