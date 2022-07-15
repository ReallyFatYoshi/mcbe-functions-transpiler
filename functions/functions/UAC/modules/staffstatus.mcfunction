#Fake staff flag
execute as @s[scores={ssmtoggle=1}]  run execute @s[scores={I2IO2NO=!273},tag=staffstatus] ~~~ tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Fake Staff Protection : §bFlagged §d"},{"selector":"@s"},{"text":"§¶§b for unauthorized staff tag."}]}

#Fake staff checks
execute as @s[scores={ssmtoggle=1,2DI3N=!244}]  run scoreboard players set @s 39SN230 0
execute as @s[scores={ssmtoggle=1,39SN230=!853}]  run scoreboard players set @s GFS98 0
execute as @s[scores={ssmtoggle=1,GFS98=!436}]  run scoreboard players set @s D98AD 0
execute as @s[scores={ssmtoggle=1,D98AD=!613}]  run scoreboard players set @s I2IO2NO 0
execute as @s[scores={ssmtoggle=1,I2IO2NO=!273}]  run scoreboard players reset @s staff
execute as @s[scores={ssmtoggle=1,I2IO2NO=!273}]  run tag @s remove staffstatus

#Removes Tags From Non Staff Members
tag @s[tag=!staffstatus] remove spectate
tag @s[tag=!staffstatus] remove godmode


#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide