#Clear items
clear @s[tag=!staffstatus,scores={uoimtoggle=1}] bedrock
clear @s[tag=!staffstatus,scores={uoimtoggle=1}] barrier
clear @s[tag=!staffstatus,scores={uoimtoggle=1}] end_portal_frame
clear @s[tag=!staffstatus,scores={uoimtoggle=1}] mob_spawner

#Dropped Items bypass
execute as @s[tag=!staffstatus,scores={uoimtoggle=1}]  run function UAC/asset/uoim_dropclear_asset



#Placed Items bypass
execute as @s[tag=!staffstatus,scores={uoimtoggle=1}]  at @s run fill ~8 ~5 ~8 ~-8 ~-5 ~-8 air 0 replace barrier
execute as @s[tag=!staffstatus,scores={uoimtoggle=1}]  run execute @s[scores={bbmtoggle=0,Y_Coordinate=6..}] ~~~ fill ~8 ~5 ~8 ~-8 ~-5 ~-8 air 0 replace bedrock



#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide