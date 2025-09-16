# Setup scoreboards for directives & recursion
scoreboard objectives add directives dummy
scoreboard objectives add recursionDeaths deathCount
scoreboard objectives add soul.time dummy
scoreboard objectives add book.bond dummy
scoreboard objectives add book.wax_cd dummy
scoreboard objectives add book.page_cd dummy
scoreboard objectives add book.keepinv_timer dummy
scoreboard objectives add elem.fire dummy
scoreboard objectives add elem.power dummy
scoreboard objectives add elem.water dummy
scoreboard objectives add elem.earth dummy
scoreboard objectives add elem.air dummy
scoreboard objectives add elem.void dummy
scoreboard objectives add elem.mystic dummy
scoreboard objectives add elem.creation dummy

# Namespaced storage
# (Holds book state, accessories, dust counters, etc.)
data modify storage soul:book state set value {}

tellraw @a {"text":"[Soul Protocol] Initialized.","color":"dark_purple"}