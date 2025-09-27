# Soul Debug Init
# Quick reset + testing utilities

tellraw @a {"text":"[Soul Debug] Resetting scores + tags...","color":"aqua"}

# Reset common scoreboards (expand later as needed)
scoreboard objectives add directives dummy
scoreboard objectives add deaths dummy
scoreboard objectives add essence dummy

scoreboard players reset @a directives
scoreboard players reset @a deaths
scoreboard players reset @a essence

# Clear Codex tags
tag @a remove codex_active
tag @a remove recursion_curse

# Optional: give yourself the Book of Becoming
give @p written_book{title:"Book of Becoming",author:"NSS",pages:['{"text":"A blank page..."}']} 1

tellraw @a {"text":"[Soul Debug] Init complete.","color":"green"}
