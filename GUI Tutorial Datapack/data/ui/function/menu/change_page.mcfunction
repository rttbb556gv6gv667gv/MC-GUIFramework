scoreboard players set .type ui 1
$execute as @e[type=chest_minecart,tag=new] run function ui:menu/$(id)/$(page)/open
execute as @e[type=chest_minecart,tag=new] run function ui:minecart/load_page
