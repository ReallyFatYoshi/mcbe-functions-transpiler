execute as @s[tag=staffstatus]  run scoreboard players add acmtoggledummy ACM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a ACM = acmtoggledummy ACM

#turn on
execute as @s[tag=staffstatus,scores={ACM=1}]  run scoreboard players set acmtoggledummy acmtoggle 1
execute as @s[tag=staffstatus,scores={ACM=1}]  run scoreboard players operation @a acmtoggle = acmtoggledummy acmtoggle
execute as @s[tag=staffstatus,scores={ACM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-CBE §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=staffstatus,scores={has_xx=0,ACM=1}] {"rawtext":[{"text":"§¶§cUAC ► §6Experimental Features §7: §cNot Enabled §7|| §cSome detections may not work!"}]}
#turn off
execute as @s[tag=staffstatus,scores={ACM=2}]  run scoreboard players set acmtoggledummy acmtoggle 0
execute as @s[tag=staffstatus,scores={ACM=2}]  run scoreboard players operation @a acmtoggle = acmtoggledummy acmtoggle
execute as @s[tag=staffstatus,scores={ACM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-CBE §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={ACM=2}]  run scoreboard players set acmtoggledummy ACM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27