# Main Loop
execute as @a run function ui:player/tick
execute as @e[type=chest_minecart,tag=ui] run function ui:minecart/tick
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{ui_item:{}}}}}]
execute as @p[sort=nearest,limit=1] at @s rotated as @s positioned as @s if data storage minecraft:ui Open{UI:1b} run item replace entity @s hotbar.0 with minecraft:compass[minecraft:custom_data={ui:1b},minecraft:custom_name={"text":"Menu","color":"yellow","italic":false,"bold":true}]

# Tester
execute as @a[scores={test=1}] run say ✔
scoreboard players set @a[scores={test=1..}] test 0
