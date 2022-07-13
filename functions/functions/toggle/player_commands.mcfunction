execute as @s[tag=staffstatus]  run scoreboard players add icmtoggledummy ICM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a ICM = icmtoggledummy ICM

#turn on
execute as @s[tag=staffstatus,scores={ICM=1}]  run scoreboard players set icmtoggledummy icmtoggle 1
execute as @s[tag=staffstatus,scores={ICM=1}]  run scoreboard players operation @a icmtoggle = icmtoggledummy icmtoggle
execute as @s[tag=staffstatus,scores={ICM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Player Commands §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @s[tag=staffstatus,scores={has_gt=0,ICM=1}] {"rawtext":[{"text":"§¶§cUAC ► §6Gametest Features §7: §cNot Enabled §7|| §cPlayer Chat commands will not work"}]}
#turn off
execute as @s[tag=staffstatus,scores={ICM=2}]  run scoreboard players set icmtoggledummy icmtoggle 0
execute as @s[tag=staffstatus,scores={ICM=2}]  run scoreboard players operation @a icmtoggle = icmtoggledummy icmtoggle
execute as @s[tag=staffstatus,scores={ICM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Player Commands §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={ICM=2}]  run scoreboard players set icmtoggledummy ICM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27