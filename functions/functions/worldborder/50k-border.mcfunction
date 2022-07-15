execute as @s[tag=staffstatus,scores={wbmtoggle=1}]  run scoreboard players set BDXdummy Border_Coord_X 50000
execute as @s[tag=staffstatus,scores={wbmtoggle=1}]  run scoreboard players set BDXdummy Border_Coord_Z 50000
execute as @s[tag=staffstatus,scores={wbmtoggle=1}]  run scoreboard players operation @a Border_Coord_Z = BDXdummy Border_Coord_Z
execute as @s[tag=staffstatus,scores={wbmtoggle=1}]  run scoreboard players operation @a Border_Coord_X = BDXdummy Border_Coord_X

#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s[scores={wbmtoggle=1}] {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~
execute as @s[tag=staffstatus]  run tellraw @a[tag=staffstatus,scores={wbmtoggle=1}] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6World Border §bhas been set to §250k §bby §d"},{"selector":"@s"}]}

#check for toggle
execute as @s[tag=staffstatus]  run tellraw @s[scores={wbmtoggle=0}] {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bWorld Border Module must be enabled before the size can be changed"}]}
execute as @s[tag=staffstatus,scores={wbmtoggle=0}]  run playsound note.bass @s ~ ~ ~

scoreboard players set @s lstcmd 31