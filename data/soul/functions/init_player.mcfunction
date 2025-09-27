# soul:init_player
# Align counters so we don't immediately fire death logic on first tick

scoreboard players operation @s lastDeathCount = @s deathCount
tag @s add soul_init
