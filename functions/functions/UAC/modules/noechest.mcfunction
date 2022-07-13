execute as @s[tag=!staffstatus,scores={nemtoggle=1}]  at @s run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air 0 replace ender_chest
clear @s[tag=!staffstatus,scores={nemtoggle=1}] ~~~ ender_chest


#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide