execute as @s[scores={mdmtoggle=1}]  run execute @s[tag=staffstatus] ~~~ scoreboard players set mdmtoggledummy goldmd 1
execute as @s[scores={mdmtoggle=1}]  run execute @s[tag=staffstatus] ~~~ scoreboard players operation @a goldmd = mdmtoggledummy goldmd

#Check of Mining Detection module
execute as @s[scores={mdmtoggle=0}]  run execute @s[tag=!staffstatus] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[scores={mdmtoggle=0}]  run execute @s[tag=!staffstatus] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[scores={mdmtoggle=0}]  run execute @s[tag=staffstatus] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §6Mining Detection §bneeds to be enabled to toggle this"}]}
execute as @s[scores={mdmtoggle=0}]  run execute @s[tag=staffstatus] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~

#Deny Nonstaff
execute as @s[scores={mdmtoggle=1}]  run execute @s[tag=!staffstatus] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[scores={mdmtoggle=1}]  run execute @s[tag=!staffstatus] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[scores={mdmtoggle=1}]  run execute @s[tag=staffstatus] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~
execute as @s[scores={mdmtoggle=1}]  run execute @s[tag=staffstatus] ~~~ tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Gold Alerts §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}

scoreboard players set @s lstcmd 98