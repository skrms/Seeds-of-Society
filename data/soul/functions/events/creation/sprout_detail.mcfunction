# Only affect naturalish surfaces; skip water/lava/leaves/etc.
# Convert turf to moss, stone-ish to mossy variants, and add life.

# Ground conversions
execute if block ~ ~-1 ~ minecraft:grass_block run setblock ~ ~-1 ~ minecraft:moss_block
execute if block ~ ~-1 ~ minecraft:dirt run setblock ~ ~-1 ~ minecraft:moss_block
execute if block ~ ~-1 ~ minecraft:coarse_dirt run setblock ~ ~-1 ~ minecraft:moss_block
execute if block ~ ~-1 ~ minecraft:stone run setblock ~ ~-1 ~ minecraft:mossy_cobblestone
execute if block ~ ~-1 ~ minecraft:cobblestone run setblock ~ ~-1 ~ minecraft:mossy_cobblestone
execute if block ~ ~-1 ~ minecraft:stone_bricks run setblock ~ ~-1 ~ minecraft:mossy_stone_bricks

# Plants (guard with air check above)
execute if block ~ ~ ~ minecraft:air if predicate soul:chance_20 run setblock ~ ~ ~ minecraft:moss_carpet
execute if block ~ ~ ~ minecraft:air if predicate soul:chance_10 run setblock ~ ~ ~ minecraft:small_dripleaf
execute if block ~ ~ ~ minecraft:air if predicate soul:chance_10 run setblock ~ ~ ~ minecraft:grass
execute if block ~ ~ ~ minecraft:air if predicate soul:chance_05 run setblock ~ ~ ~ minecraft:red_mushroom
execute if block ~ ~ ~ minecraft:air if predicate soul:chance_05 run setblock ~ ~ ~ minecraft:brown_mushroom
execute if block ~ ~ ~ minecraft:air if predicate soul:chance_05 run setblock ~ ~ ~ minecraft:spore_blossom

# Vertical creep on walls (vines)
execute if predicate soul:chance_10 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:vine

# Cozy but eerie flourish
execute if predicate soul:chance_10 run particle minecraft:spore_blossom_air ~ ~0.8 ~ 0.2 0.3 0.2 0.01 10
