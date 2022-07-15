execute as @s[tag=staffstatus]  run scoreboard players add ibmtoggledummy IBM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a IBM = ibmtoggledummy IBM

#turn on
execute as @s[tag=staffstatus,scores={IBM=1}]  run scoreboard players set ibmtoggledummy ibmtoggle 1
execute as @s[tag=staffstatus,scores={IBM=1}]  run scoreboard players operation @a ibmtoggle = ibmtoggledummy ibmtoggle
execute as @s[tag=staffstatus,scores={IBM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Custom Item Ban §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute as @s[tag=staffstatus,scores={IBM=2}]  run scoreboard players set ibmtoggledummy ibmtoggle 0
execute as @s[tag=staffstatus,scores={IBM=2}]  run scoreboard players operation @a ibmtoggle = ibmtoggledummy ibmtoggle
execute as @s[tag=staffstatus,scores={IBM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Custom Item Ban §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={IBM=2}]  run scoreboard players set ibmtoggledummy IBM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~
scoreboard players set @s lstcmd 57