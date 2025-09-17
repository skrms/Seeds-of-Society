# Trigger: when player right-clicks book item (placeholder trigger—wire to advancement/command keybind)
# Cooldown tracked on book.wax_cd (ticks). If cd > 0, decrement.
execute as @a[scores={book.wax_cd=1..}] run scoreboard players remove @s book.wax_cd 1

# Example buff on activation (to be wired in page/rite)
# effect give @s minecraft:regeneration 10 0 true
