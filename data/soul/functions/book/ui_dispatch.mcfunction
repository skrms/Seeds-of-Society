execute if score @s sos.ui.page matches 1 run function sos:book/page_fire
execute if score @s sos.ui.page matches 2 run function sos:book/page_earth
execute if score @s sos.ui.page matches 3 run function sos:book/page_water
execute if score @s sos.ui.page matches 4 run function sos:book/page_air
execute if score @s sos.ui.page matches 5 run function sos:book/page_insights
scoreboard players set @s sos.ui.page 0
