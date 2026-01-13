# Action: 1
tellraw @a [{"text":"[GUI]","color":"green"}," ",{"text":"Loading...","color":"gold"}]

# Action: 2
scoreboard objectives add ui dummy
scoreboard objectives add ui.id dummy
setblock 0 -64 0 yellow_shulker_box
data modify storage minecraft:ui Open set value {UI:0b}
scoreboard objectives add .act dummy {"text":"Action","color":"green","italic":false}
scoreboard objectives add test dummy

# Action: 3
schedule function ui:loaded 25t
