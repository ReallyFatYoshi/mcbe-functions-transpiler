#This actually keeps people from doing dmg in creative. using game bug.
#Yes I know weakness in theory  will nerf your damage. However, with strength, your hits won't even register on any mob.
execute as @s[m=c,scores={opamtoggle=1}]  run effect @s weakness 30 255 true
execute as @s[m=c,scores={opamtoggle=1}]  run kill @e[type=splash_potion,r=5]
execute as @s[m=c,scores={opamtoggle=1}]  run kill @e[type=arrow,r=5]

#Disable the GodMode tool & vanish mode
execute as @s[tag=staffstatus,scores={opamtoggle=1}]  run tag @s remove tgmGodMode
execute as @s[tag=staffstatus,scores={opamtoggle=1}]  run scoreboard players reset @s tgmGodMode
execute as @s[tag=staffstatus,scores={opamtoggle=1}]  run tag @s remove spectate
execute as @s[tag=staffstatus,scores={opamtoggle=1}]  run scoreboard players reset @s vnsh

#Disable autototem
tag @s[tag=staffstatus,scores={opamtoggle=1}] remove totemaut
scoreboard players set @s[tag=staffstatus,scores={opamtoggle=1}] totemaut 0
scoreboard players set @s[tag=staffstatus,scores={opamtoggle=1}] totemtog 0

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide