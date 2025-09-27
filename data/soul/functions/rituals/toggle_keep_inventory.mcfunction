# If timer just started, turn it on, else count down and switch off when time elapsed.
# 5 MC days = 5 × 24000 = 120000 ticks. Use book.keepinv_timer to store remaining.
execute as @a[scores={book.keepinv_timer=..0}] run scoreboard players set @s book.keepinv_timer 120000
execute as @a[scores={book.keepinv_timer=1..}] run scoreboard players remove @s book.keepinv_timer 1

# Enable gamerule globally while any player has the timer > 0 (simple global approach)
execute if entity @a[scores={book.keepinv_timer=1..}] run gamerule keepInventory true
execute unless entity @a[scores={book.keepinv_timer=1..}] run gamerule keepInventory false
