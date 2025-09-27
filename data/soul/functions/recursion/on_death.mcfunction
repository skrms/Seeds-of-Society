# soul:recursion/on_death
# Sync lastDeathCount to current, then hand off to your counter/curse pipeline

# Sync so multiple ticks don't double-fire
scoreboard players operation @s lastDeathCount = @s deathCount

# Increment recursionDeaths and let the checker decide the fate
function soul:recursion/death_counter
