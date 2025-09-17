# Splash: emergency trigger — wire via predicates or advancements
# Placeholder: Fire resistance when set on fire
execute as @a if entity @s[nbt={OnFire:1b}] run effect give @s minecraft:fire_resistance 8 0 true
