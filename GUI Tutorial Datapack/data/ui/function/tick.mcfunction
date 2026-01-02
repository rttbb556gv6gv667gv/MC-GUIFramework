# Main Loop
execute as @a run function ui:player/tick
execute as @e[type=chest_minecart,tag=ui] run function ui:minecart/tick
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{ui_item:{}}}}}]

# Loop
execute if data storage minecraft:ui Open{UI:1b} run item replace entity @s hotbar.0 with minecraft:totem_of_undying[minecraft:custom_data={ui:1b}]
