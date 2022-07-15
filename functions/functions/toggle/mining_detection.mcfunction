execute as @s[tag=staffstatus]  run scoreboard players add mdmtoggledummy MDM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a MDM = mdmtoggledummy MDM

#turn on
execute as @s[tag=staffstatus,scores={MDM=1}]  run scoreboard players set mdmtoggledummy mdmtoggle 1
execute as @s[tag=staffstatus,scores={MDM=1}]  run scoreboard players operation @a mdmtoggle = mdmtoggledummy mdmtoggle
execute as @s[tag=staffstatus,scores={MDM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Mining Detection §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute as @s[tag=staffstatus,scores={MDM=2}]  run scoreboard players set mdmtoggledummy mdmtoggle 0
execute as @s[tag=staffstatus,scores={MDM=2}]  run scoreboard players operation @a mdmtoggle = mdmtoggledummy mdmtoggle
execute as @s[tag=staffstatus,scores={MDM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Mining Detection §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={MDM=2}]  run scoreboard players set mdmtoggledummy MDM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 91