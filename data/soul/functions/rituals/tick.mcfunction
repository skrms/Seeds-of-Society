# soul:rituals/tick
# Featherweight: tooltip pings or stance checks.

# Example: if standing on calcite with candles nearby, whisper “site hums”
execute if block ~ ~-1 ~ minecraft:calcite if entity @e[type=item,nbt={Item:{id:"minecraft:candle"}},distance=..4,limit=1] run title @s actionbar {"text":"The site hums with potential...", "color":"#FFE8B5"}
