execute as @s[scores={bbmtoggle=1,BBMCC=1,in_end=!1,has_xx=1}]  at @s run fill ~15 -64 ~-10 ~-10 -64 ~15 bedrock
execute as @s[scores={bbmtoggle=1,BBMCC=0,in_end=!1,has_xx=1}]  at @s run fill ~15 0 ~-10 ~-10 0 ~15 bedrock
execute as @s[scores={bbmtoggle=1,in_nether=1,has_xx=1}]  at @s run fill ~15 0 ~-10 ~-10 0 ~15 bedrock

#Default if experimentals are off
execute as @s[scores={bbmtoggle=1,BBMCC=1,has_xx=!1}]  at @s run fill ~15 -64 ~-10 ~-10 -64 ~15 bedrock
execute as @s[scores={bbmtoggle=1,BBMCC=0,has_xx=!1}]  at @s run fill ~15 0 ~-10 ~-10 0 ~15 bedrock

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide