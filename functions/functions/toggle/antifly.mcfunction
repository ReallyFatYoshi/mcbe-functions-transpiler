execute as @s[tag=staffstatus]  run scoreboard players add afmtoggledummy AFM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a AFM = afmtoggledummy AFM

#turn on
execute as @s[tag=staffstatus,scores={AFM=1}]  run scoreboard players set afmtoggledummy afmtoggle 1
execute as @s[tag=staffstatus,scores={AFM=1}]  run scoreboard players operation @a afmtoggle = afmtoggledummy afmtoggle
execute as @s[tag=staffstatus,scores={AFM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-Fly §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=staffstatus,scores={has_xx=0,AFM=1}] {"rawtext":[{"text":"§¶§cUAC ► §6Experimental Features §7: §cNot Enabled §7|| §cThis module may false ban with elytra users!"}]}
#turn off
execute as @s[tag=staffstatus,scores={AFM=2}]  run scoreboard players set afmtoggledummy afmtoggle 0
execute as @s[tag=staffstatus,scores={AFM=2}]  run scoreboard players operation @a afmtoggle = afmtoggledummy afmtoggle
execute as @s[tag=staffstatus,scores={AFM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-Fly §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={AFM=2}]  run scoreboard players set afmtoggledummy AFM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27