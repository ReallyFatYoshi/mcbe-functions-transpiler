execute as @s[tag=staffstatus]  run scoreboard players add ltmtoggledummy LTM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a LTM = ltmtoggledummy LTM

#turn on
execute as @s[tag=staffstatus,scores={LTM=1}]  run scoreboard players set ltmtoggledummy ltmtoggle 1
execute as @s[tag=staffstatus,scores={LTM=1}]  run scoreboard players operation @a ltmtoggle = ltmtoggledummy ltmtoggle
execute as @s[tag=staffstatus,scores={LTM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Auto Lag Clear §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute as @s[tag=staffstatus,scores={LTM=2}]  run scoreboard players set ltmtoggledummy ltmtoggle 0
execute as @s[tag=staffstatus,scores={LTM=2}]  run scoreboard players operation @a ltmtoggle = ltmtoggledummy ltmtoggle
execute as @s[tag=staffstatus,scores={LTM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Auto Lag Clear §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={LTM=2}]  run scoreboard players set ltmtoggledummy LTM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 61