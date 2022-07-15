execute as @s[tag=staffstatus]  run scoreboard players add bbmtoggledummy BBM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a BBM = bbmtoggledummy BBM

#turn on
execute as @s[tag=staffstatus,scores={BBM=1}]  run scoreboard players set bbmtoggledummy bbmtoggle 1
execute as @s[tag=staffstatus,scores={BBM=1}]  run scoreboard players operation @a bbmtoggle = bbmtoggledummy bbmtoggle
execute as @s[tag=staffstatus,scores={BBM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Bottom Bedrock §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=staffstatus,scores={has_xx=0,BBM=1}] {"rawtext":[{"text":"§¶§cUAC ► §6Experimental Features §7: §cNot Enabled §7|| §cBedrock Layers may spawn in all demensions without proper detections working."}]}
execute as @s[tag=staffstatus,scores={BBM=1}]  run dialogue open @s @s uac_fine_tune_bbm
#turn off
execute as @s[tag=staffstatus,scores={BBM=2}]  run scoreboard players set bbmtoggledummy bbmtoggle 0
execute as @s[tag=staffstatus,scores={BBM=2}]  run scoreboard players operation @a bbmtoggle = bbmtoggledummy bbmtoggle
execute as @s[tag=staffstatus,scores={BBM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Bottom Bedrock §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={BBM=2}]  run scoreboard players set bbmtoggledummy BBM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27