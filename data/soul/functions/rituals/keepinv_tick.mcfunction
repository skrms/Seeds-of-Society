# Soul :: rituals/keepinv_tick
# Count down the ritual timer; when it hits 0, restore normal rules.

execute if score #world soul.keepinv_timer matches 1.. run scoreboard players remove #world soul.keepinv_timer 1
execute if score #world soul.keepinv_timer matches 0 run function soul:rituals/keepinv_end
