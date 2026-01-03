# Mode
$scoreboard players set #mode .act $(mode)

# SET
$execute as $(player) if score #mode .act matches 1 run scoreboard players set @s $(score) $(value)

# ADD
$execute as $(player) if score #mode .act matches 2 run scoreboard players add @s $(score) $(value)

# REMOVE
$execute as $(player) if score #mode .act matches 3 run scoreboard players remove @s $(score) $(value)

# RESET
$execute as $(player) if score #mode .act matches 4 run scoreboard players reset @s $(score)

# Cleanup
scoreboard players set * .act 0
