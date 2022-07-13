execute as @s[tag=staffstatus]  run scoreboard players add hmmtoggledummy HMM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a HMM = hmmtoggledummy HMM

#turn on
execute as @s[tag=staffstatus,scores={HMM=1}]  run scoreboard players set hmmtoggledummy hmmtoggle 1
execute as @s[tag=staffstatus,scores={HMM=1}]  run scoreboard players operation @a hmmtoggle = hmmtoggledummy hmmtoggle
execute as @s[tag=staffstatus,scores={HMM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Hotbar Message §bhas been set to §2WITH-SCORE §bmode §bby §d"},{"selector":"@s"}]}
#switch mode
execute as @s[tag=staffstatus,scores={HMM=2}]  run scoreboard players set hmmtoggledummy hmmtoggle 2
execute as @s[tag=staffstatus,scores={HMM=2}]  run scoreboard players operation @a hmmtoggle = hmmtoggledummy hmmtoggle
execute as @s[tag=staffstatus,scores={HMM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Hotbar Message §bhas been set to §2WITHOUT-SCORE §bmode §bby §d"},{"selector":"@s"}]}
#switch mode
execute as @s[tag=staffstatus,scores={HMM=3}]  run scoreboard players set hmmtoggledummy hmmtoggle 0
execute as @s[tag=staffstatus,scores={HMM=3}]  run scoreboard players operation @a hmmtoggle = hmmtoggledummy hmmtoggle
execute as @s[tag=staffstatus,scores={HMM=3}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Hotbar Message §bhas been §cDISABLED §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={HMM=3}]  run scoreboard players set hmmtoggledummy HMM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 37