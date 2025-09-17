# Soul :: curse/tick
# Watch for players who are cursed and hit 5 deaths; then trigger the recall

execute as @a[tag=recursion_curse,scores={soul.deaths=5..}] run function soul:curse/recall
