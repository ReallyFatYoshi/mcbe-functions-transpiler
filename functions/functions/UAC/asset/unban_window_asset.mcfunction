hide
#Deny if not staff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run playsound note.pling @s ~ ~ ~

#add switch loop trigger
execute as @s[tag=staffstatus]  run scoreboard players add @s unban 1

#Start unban window
execute as @s[tag=staffstatus,scores={unban=1}]  run scoreboard players set @s unbantimer 540
execute as @s[tag=staffstatus,scores={unban=1}]  run scoreboard players set @s hometp 5
execute as @s[tag=staffstatus,scores={unban=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §d"},{"selector":"@s"},{"text":" §bhas §2OPENED a §6Unban Window"}]}
execute as @s[tag=staffstatus,scores={unban=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§d"},{"selector":"@s"},{"text":" §¶§bneeds to close the window before they leave the realm.\nThey may execute the unban window command again to close it early."}]}

#Close unban window
execute as @s[tag=staffstatus,scores={unban=2}]  run scoreboard players reset @s unbantimer
execute as @s[tag=staffstatus,scores={unban=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §d"},{"selector":"@s"},{"text":" §bhas §cCLOSED a §6Unban Window"}]}
execute as @s[tag=staffstatus,scores={unban=2}]  run scoreboard players set @s hometp 3
execute as @s[tag=staffstatus,scores={unban=2}]  run scoreboard players set @s unban 0