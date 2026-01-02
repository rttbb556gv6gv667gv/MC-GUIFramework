function ui:menu/run_cmd with storage ui in[0].components."minecraft:custom_data".ui_item
function ui:menu/run_func with storage ui in[0].components."minecraft:custom_data".ui_item
function ui:menu/close with storage ui in[0].components."minecraft:custom_data".ui_item

execute if score .type ui matches 1 run function ui:minecart/load_page
