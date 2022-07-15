execute as @s[tag=staffstatus]  run scoreboard players add tpmtoggledummy TPM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a TPM = tpmtoggledummy TPM

#turn on
execute as @s[tag=staffstatus,scores={TPM=1}]  run scoreboard players set tpmtoggledummy tpmtoggle 1
execute as @s[tag=staffstatus,scores={TPM=1}]  run scoreboard players operation @a tpmtoggle = tpmtoggledummy tpmtoggle
execute as @s[tag=staffstatus,scores={TPM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Time Played Tracker §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute as @s[tag=staffstatus,scores={TPM=2}]  run scoreboard players set tpmtoggledummy tpmtoggle 0
execute as @s[tag=staffstatus,scores={TPM=2}]  run scoreboard players operation @a tpmtoggle = tpmtoggledummy tpmtoggle
execute as @s[tag=staffstatus,scores={TPM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Time Played Tracker §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={TPM=2}]  run scoreboard players set tpmtoggledummy TPM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 72