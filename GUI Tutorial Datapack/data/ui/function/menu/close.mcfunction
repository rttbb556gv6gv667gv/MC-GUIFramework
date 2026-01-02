$data modify storage minecraft:ui close set value {UI:$(exit)b}
execute if data storage minecraft:ui close{UI:1b} run function ui:player/close
data remove storage minecraft:ui close{UI:1b}
