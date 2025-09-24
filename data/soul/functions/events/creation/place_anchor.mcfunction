# Summon the “Creation Anchor” that drives surface corruption
summon marker ~ ~ ~ {Tags:["creation_anchor","soul_object"],CustomName:'{"text":"Creation Anchor","color":"green"}'}

# A little flare so the player knows Something Has Woken
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.5 0.3 0.02 80
playsound minecraft:block.spore_blossom.step ambient @a[distance=..24] ~ ~ ~ 0.8 1.2
