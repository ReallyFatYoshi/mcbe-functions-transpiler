execute as @s[scores={wbmtoggle=1,welcomed=1,worldcustom=1}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §ctried passing the world border. Their spawn has been reset."}]}
execute as @s[scores={wbmtoggle=1,welcomed=1,worldcustom=0}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §ctried passing the world border"}]}
playsound note.bass @a ~ ~ ~

#Logic for custom world spawn from Fine Tuning file
execute as @s[scores={wbmtoggle=1,welcomed=1,worldcustom=1}]  run scoreboard players operation @s X_Coord_S = @s Worldx
execute as @s[scores={wbmtoggle=1,welcomed=1,worldcustom=1}]  run scoreboard players operation @s Y_Coord_S = @s Worldy
execute as @s[scores={wbmtoggle=1,welcomed=1,worldcustom=1}]  run scoreboard players operation @s Z_Coord_S = @s Worldz
execute as @s[scores={wbmtoggle=1,welcomed=1,worldcustom=1}]  run scoreboard players set @s teleporting_home 1

#Without custom world spawn / default spawn
execute as @s[scores={wbmtoggle=1,welcomed=1,worldcustom=0}]  at @s run tp @s 0 95 0
execute as @s[scores={wbmtoggle=1,welcomed=1,worldcustom=0}]  run effect @s slow_falling 10 1 true


#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide