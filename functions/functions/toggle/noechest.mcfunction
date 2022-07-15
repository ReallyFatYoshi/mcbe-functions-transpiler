execute as @s[tag=staffstatus]  run scoreboard players add nemtoggledummy NEM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a NEM = nemtoggledummy NEM

#turn on
execute as @s[tag=staffstatus,scores={NEM=1}]  run scoreboard players set nemtoggledummy nemtoggle 1
execute as @s[tag=staffstatus,scores={NEM=1}]  run scoreboard players operation @a nemtoggle = nemtoggledummy nemtoggle
execute as @s[tag=staffstatus,scores={NEM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6No Echest §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute as @s[tag=staffstatus,scores={NEM=2}]  run scoreboard players set nemtoggledummy nemtoggle 0
execute as @s[tag=staffstatus,scores={NEM=2}]  run scoreboard players operation @a nemtoggle = nemtoggledummy nemtoggle
execute as @s[tag=staffstatus,scores={NEM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6No Echest §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={NEM=2}]  run scoreboard players set nemtoggledummy NEM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 62