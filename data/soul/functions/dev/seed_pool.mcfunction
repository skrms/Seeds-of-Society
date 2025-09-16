data remove storage codex:core directive.pool
data modify storage codex:core directive.pool set value [
  {"id":"gather_logs","rarity":"Common","time":300,"text":"[Common][5m] Gather 32 logs"},
  {"id":"light_caves","rarity":"Common","time":600,"text":"[Common][10m] Light every cave you enter"},
  {"id":"safe_mine","rarity":"Uncommon","time":900,"text":"[Uncommon][15m] Build a safe mine entrance"},
  {"id":"cook_food","rarity":"Common","time":240,"text":"[Common][4m] Cook 16 food items"},
  {"id":"travel_biome","rarity":"Rare","time":1200,"text":"[Rare][20m] Reach a different biome and mark it"},
  {"id":"craft_armor","rarity":"Uncommon","time":480,"text":"[Uncommon][8m] Craft a full set of armor"},
  {"id":"fish_meal","rarity":"Common","time":180,"text":"[Common][3m] Catch and cook a fish"},
  {"id":"nether_visit","rarity":"Rare","time":1800,"text":"[Rare][30m] Enter the Nether safely"},
  {"id":"farm_wheat","rarity":"Common","time":300,"text":"[Common][5m] Harvest and bake bread"},
  {"id":"build_shelter","rarity":"Uncommon","time":600,"text":"[Uncommon][10m] Build a safe shelter with a door and torch"}
]
tellraw @s {"text":"Directive pool seeded with 10 starter cards.","color":"green"}
