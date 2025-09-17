# XP cost gate (example 15 levels)
execute as @s if entity @s[levels=15..] run xp add @s -15 levels
execute as @s if entity @s[levels=..14] run tellraw @s {"text":"You lack resolve (XP).", "color":"red"}
# Mark engraved
data modify storage soul:book accessories.arcane_engraving set value true
tellraw @s {"text":"Arcane Engraving inscribed.","color":"aqua"}
