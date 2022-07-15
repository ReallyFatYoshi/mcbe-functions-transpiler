execute as @s[tag=staffstatus]  run scoreboard players add rsmtoggledummy RSM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a RSM = rsmtoggledummy RSM

#turn on
execute as @s[tag=staffstatus,scores={RSM=1}]  run scoreboard players set rsmtoggledummy rsmtoggle 1
execute as @s[tag=staffstatus,scores={RSM=1}]  run scoreboard players operation @a rsmtoggle = rsmtoggledummy rsmtoggle
execute as @s[tag=staffstatus,scores={RSM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Random Spawn §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @s[tag=staffstatus,scores={has_xx=0,RSM=1}] {"rawtext":[{"text":"§¶§cUAC ► §6Gametest Features §7: §cNot Enabled §7|| §cWorldSpawn will randomize but worldborder will not teleport players to the randomized coords"}]}
#turn off
execute as @s[tag=staffstatus,scores={RSM=2}]  run scoreboard players set rsmtoggledummy rsmtoggle 0
execute as @s[tag=staffstatus,scores={RSM=2}]  run scoreboard players operation @a rsmtoggle = rsmtoggledummy rsmtoggle
execute as @s[tag=staffstatus,scores={RSM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Random Spawn §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={RSM=2}]  run scoreboard players set rsmtoggledummy RSM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 69