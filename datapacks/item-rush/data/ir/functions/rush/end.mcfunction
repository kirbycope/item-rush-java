tellraw @s "Done!"

# https://www.minecraftforum.net/forums/minecraft-java-edition/redstone-discussion-and/commands-command-blocks-and/2776650-scoreboard-top-player-tagging-aka-leaderboard?comment=4
scoreboard objectives add highest dummy

# 1. The first command lets every player set everyones highest score to their kill score if it is higher than the previous highest score.
#/execute @a ~ ~ ~ /scoreboard players operation @a highest > @a[c=1] kills
scoreboard players operation @a highest > @a score
    # We end up with everyone having the overall high-score as their highest score.

# 2. Next, we make everyone subtract their kills score from their highest score.
#/execute @a ~ ~ ~ /scoreboard players operation @a[c=1] highest -= @a[c=1] kills
scoreboard players operation @a highest -= @a score
    # We end up with the difference of both scores.

# 3. If the difference equals 0, we know that that player has the highscore.
#/scoreboard players tag @r[score_highest_min=0,score_highest=0] add winner
tag @r[scores={highest=0}] add winner

#/scoreboard players reset @a highest
scoreboard players reset @a highest

# Announcement
title @a times 0 60 0
title @a title {"text":"","color":"blue","extra":[{"selector":"@p[tag=winner]"},{"text":" wins!"}]}

function ir:remove-tags
scoreboard players set @a timer 0
scoreboard players set @a rushing 0
scoreboard players enable @a rushing

# Give player an Owner's Manual
function ir:owners-manual
