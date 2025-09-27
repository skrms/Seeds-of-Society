# Lightweight, biased “random”: test a handful of offset spots each tick.
# We gate each attempt behind a small chance so it doesn’t carpet the world.

# Ring A (close)
execute if predicate soul:chance_20 positioned ~1 ~ ~ run function soul:events/creation/sprout_patch
execute if predicate soul:chance_20 positioned ~-1 ~ ~ run function soul:events/creation/sprout_patch
execute if predicate soul:chance_20 positioned ~ ~ ~1 run function soul:events/creation/sprout_patch
execute if predicate soul:chance_20 positioned ~ ~ ~-1 run function soul:events/creation/sprout_patch

# Ring B (a bit farther)
execute if predicate soul:chance_10 positioned ~2 ~ ~ run function soul:events/creation/sprout_patch
execute if predicate soul:chance_10 positioned ~-2 ~ ~ run function soul:events/creation/sprout_patch
execute if predicate soul:chance_10 positioned ~ ~ ~2 run function soul:events/creation/sprout_patch
execute if predicate soul:chance_10 positioned ~ ~ ~-2 run function soul:events/creation/sprout_patch

# Ring C (tendrils)
execute if predicate soul:chance_05 positioned ~3 ~ ~ run function soul:events/creation/sprout_patch
execute if predicate soul:chance_05 positioned ~-3 ~ ~ run function soul:events/creation/sprout_patch
execute if predicate soul:chance_05 positioned ~ ~ ~3 run function soul:events/creation/sprout_patch
execute if predicate soul:chance_05 positioned ~ ~ ~-3 run function soul:events/creation/sprout_patch
