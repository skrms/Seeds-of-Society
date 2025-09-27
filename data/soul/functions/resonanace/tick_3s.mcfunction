# soul:resonance/tick_3s
# Heavier scans: biome checks, inventory flags, ritual outcomes → level ups.

# Example placeholder: if holding an amethyst shard in offhand, bump towards Tier 1
execute if entity @s[nbt={SelectedItemOffhand:{id:"minecraft:amethyst_shard"}}] if score @s soul.resonance_level matches ..0 run scoreboard players set @s soul.resonance_level 1

# Example global tally (for future unlocks/analytics)
# data modify storage soul:state resonance.totals add value 1   # (JSON math later)
