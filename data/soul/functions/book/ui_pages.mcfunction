tellraw @s [{"text":"Book Pages","color":"green","bold":true}]
execute if data storage sos:book pages.PowerInsight run tellraw @s [{"text":"• Power: The Hammering Flame — ","color":"yellow"},{"storage":"sos:book","nbt":"pages.PowerInsight.text","interpret":true}]
execute if data storage sos:book pages.MysticInsight run tellraw @s [{"text":"• Mystic: The Breath That Remembers — ","color":"aqua"},{"storage":"sos:book","nbt":"pages.MysticInsight.text","interpret":true}]
execute unless data storage sos:book pages.PowerInsight unless data storage sos:book pages.MysticInsight run tellraw @s [{"text":"No insights yet. Master primaries to reveal pages.","color":"gray"}]
