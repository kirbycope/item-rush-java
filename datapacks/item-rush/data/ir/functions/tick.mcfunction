# Initialize new player
execute as @a[tag=!init] run function ir:init-player

# Start the rush
execute as @a[tag=init,scores={rushing=1}] run function ir:rush/start

# Check the countdown timer
execute as @a[tag=init,scores={rushing=2}] run function ir:rush/countdown

# Check the rush timer
execute as @a[tag=init,scores={rushing=3}] run function ir:rush/timer

# Check for scores
execute as @a[tag=init,scores={rushing=3}] run function ir:rush/check-progress

# Check for deaths
execute as @a[tag=init,scores={rushing=3}] run function ir:rush/pvp

# Increment timer if running
execute as @a[tag=init,scores={timer=1..}] run scoreboard players add @s timer 1

# Rainbow scoreboard sidebar title
execute as @a[tag=init,scores={timer=1..}] run function ir:rush/title
