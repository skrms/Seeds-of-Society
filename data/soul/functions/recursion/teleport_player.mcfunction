# Placeholder: recursive displacement (adjust coords/logic later)
particle minecraft:portal ^ ^1 ^ 1 1 1 0.1 100 force @a
tp @s 0 200 0
playsound minecraft:block.portal.travel master @s ~ ~ ~ 1 1
scoreboard players set @s recursionDeaths 0
