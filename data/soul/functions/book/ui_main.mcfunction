
tellraw @s [
  {"text":"\n— Book of Becoming —\n","color":"green","bold":true},
  {"text":"[View Pages]","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function sos:book/ui_pages"}},
  {"text":"  "},
  {"text":"[Check Masteries]","color":"aqua","underlined":true,"clickEvent":{"action":"run_command","value":"/function sos:book/ui_checks"}},
  {"text":"  "},
  {"text":"[Place Fire Site]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/function sos:village/site_fire"}},
  {"text":"\n"}
]
