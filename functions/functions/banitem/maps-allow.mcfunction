execute as @s[tag=staffstatus]  run execute @s[scores={ibmtoggle=1}] ~~~ scoreboard players set BNMdummy BNM 0
execute as @s[tag=staffstatus]  run execute @s[scores={ibmtoggle=1}] ~~~ scoreboard players operation @a BNM = BNMdummy BNM
execute as @s[tag=staffstatus]  run execute @s[scores={ibmtoggle=1}] ~~~ scoreboard players set @a BNM 0

#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s[scores={ibmtoggle=1}] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s[scores={ibmtoggle=1}] ~~~ tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Maps §bhave been §2ALLOWED §bby §d"},{"selector":"@s"}]}

#add arg for itemban module
execute as @s[tag=staffstatus]  run execute @s[scores={ibmtoggle=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §6Ban Item Module §bmust be enabled to use this command"}]}
execute as @s[tag=staffstatus]  run execute @s[scores={ibmtoggle=0}] ~~~ playsound note.bass @s ~ ~ ~

scoreboard players set @s lstcmd 85