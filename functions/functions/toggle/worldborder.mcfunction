execute as @s[tag=staffstatus]  run scoreboard players add wbmtoggledummy WBM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a WBM = wbmtoggledummy WBM

#turn on
execute as @s[tag=staffstatus,scores={WBM=1}]  run scoreboard players set wbmtoggledummy wbmtoggle 1
execute as @s[tag=staffstatus,scores={WBM=1}]  run scoreboard players operation @a wbmtoggle = wbmtoggledummy wbmtoggle
execute as @s[tag=staffstatus,scores={WBM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6World Border §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=staffstatus,scores={has_xx=0,WBM=1}] {"rawtext":[{"text":"§¶§cUAC ► §6Experimental Features §7: §cNot Enabled §7|| §cThis module may not work!"}]}
#turn off
execute as @s[tag=staffstatus,scores={WBM=2}]  run scoreboard players set wbmtoggledummy wbmtoggle 0
execute as @s[tag=staffstatus,scores={WBM=2}]  run scoreboard players operation @a wbmtoggle = wbmtoggledummy wbmtoggle
execute as @s[tag=staffstatus,scores={WBM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6World Border §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={WBM=2}]  run scoreboard players set wbmtoggledummy WBM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 77