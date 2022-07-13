execute as @s[tag=staffstatus]  run scoreboard players add damtoggledummy DAM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a DAM = damtoggledummy DAM

#turn on
execute as @s[tag=staffstatus,scores={DAM=1}]  run scoreboard players set damtoggledummy damtoggle 1
execute as @s[tag=staffstatus,scores={DAM=1}]  run scoreboard players operation @a damtoggle = damtoggledummy damtoggle
execute as @s[tag=staffstatus,scores={DAM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6No Enchanted Armor §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=staffstatus,scores={has_xx=0,DAM=1}] {"rawtext":[{"text":"§¶§cUAC ► §6Experimental Features §7: §cNot Enabled §7|| §cThis module may not work!"}]}
#turn off
execute as @s[tag=staffstatus,scores={DAM=2}]  run scoreboard players set damtoggledummy damtoggle 0
execute as @s[tag=staffstatus,scores={DAM=2}]  run scoreboard players operation @a damtoggle = damtoggledummy damtoggle
execute as @s[tag=staffstatus,scores={DAM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6No Enchanted Armor §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={DAM=2}]  run scoreboard players set damtoggledummy DAM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27