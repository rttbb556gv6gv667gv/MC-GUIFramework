# Starter
$data modify storage minecraft:ui close set value {UI:$(exit)b}

# Branch
execute if data storage minecraft:ui close{UI:1b} run function ui:player/close
execute if data storage minecraft:ui close{UI:0b} run function ui:menu/empty
execute if data storage minecraft:ui close{UI:2b} run function ui:player/close
execute if data storage minecraft:ui close{UI:2b} run function ui:player/open

# Cleanup
data remove storage minecraft:ui close
