# Soul :: rituals/bind_book
# Bind the player to the Book of Becoming and mark them as cursed (eligible for recursion)

tag @s add codex_active
tag @s add recursion_curse

tellraw @s {"text":"[Book of Becoming] Your soul is now bound. The world will remember.","color":"light_purple"}
