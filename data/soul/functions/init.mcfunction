# Objectives
scoreboard objectives add codex.tick dummy
scoreboard objectives add codex.timer dummy
scoreboard objectives add codex.cd dummy
scoreboard objectives add codex.ledger trigger
scoreboard objectives add codex.book trigger
scoreboard objectives add codex.snap dummy

# Bossbar
bossbar add codex:directive "Directive"
bossbar set codex:directive players @a

# Starter pool (object form)
data modify storage codex:core directive.pool set value [
  {"id":"gather_logs","rarity":"Common","time":300,"text":"[Common][5m] Gather 32 logs"},
  {"id":"light_caves","rarity":"Common","time":600,"text":"[Common][10m] Light every cave you enter"},
  {"id":"safe_mine","rarity":"Uncommon","time":900,"text":"[Uncommon][15m] Build a safe mine entrance"}
]

function codex:util/tell
