execute as @s[tag=staffstatus]  run scoreboard players add afkdummy afkm 1
scoreboard players operation @a afkm = afkdummy afkm

#turn on
execute as @s[tag=staffstatus,scores={afkm=1}]  run scoreboard players operation @a afkm = afkdummy afkm
execute as @s[tag=staffstatus,scores={afkm=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Afk Kick §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute as @s[tag=staffstatus,scores={afkm=2}]  run scoreboard players operation @a afkm = afkdummy afkm
execute as @s[tag=staffstatus,scores={afkm=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Afk Kick §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={afkm=2}]  run scoreboard players set afkdummy afkm 0
execute as @s[tag=staffstatus,scores={afkm=2}]  run scoreboard players operation @a afkm = afkdummy afkm

#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~