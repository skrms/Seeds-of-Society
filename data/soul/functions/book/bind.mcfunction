# Bind book: set book.bond and write owner to storage
scoreboard players set @s book.bond 1
data modify storage soul:book owner set from entity @s UUID
function soul:book/ui_open
