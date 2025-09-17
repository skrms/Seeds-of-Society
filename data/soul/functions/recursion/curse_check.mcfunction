# If player has died 5 times, trigger recursion curse
execute as @a[scores={recursionDeaths=5..}] run function soul:recursion/teleport_player
