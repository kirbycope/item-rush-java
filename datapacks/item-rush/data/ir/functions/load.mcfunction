# Initialize World
worldborder center 0 0
worldborder set 128
tellraw @p "World Border set to 128 blocks wide"

# Scoreboard(s)
scoreboard objectives add pvp_death killed_by:player
scoreboard objectives add rushing trigger
scoreboard objectives add score dummy "Item Rush"
scoreboard objectives setdisplay sidebar score
scoreboard objectives add timer dummy
scoreboard objectives add title dummy
