execute as @s[tag=staffstatus]  run scoreboard players add osmtoggledummy OSM 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a OSM = osmtoggledummy OSM

#turn on
execute as @s[tag=staffstatus,scores={OSM=1}]  run scoreboard players set osmtoggledummy osmtoggle 1
execute as @s[tag=staffstatus,scores={OSM=1}]  run scoreboard players operation @a osmtoggle = osmtoggledummy osmtoggle
execute as @s[tag=staffstatus,scores={OSM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-Oneshot §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={OSM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §cCritical Hits with sharpness may false flag"}]}
execute as @s[tag=staffstatus,scores={OSM=1}]  run tag @a add can_oneshot
tellraw @a[tag=staffstatus,scores={has_xx=0,OSM=1}] {"rawtext":[{"text":"§¶§cUAC ► §6Experimental Features §7: §cNot Enabled §7|| §cThis module may not work!"}]}
#turn off
execute as @s[tag=staffstatus,scores={OSM=2}]  run scoreboard players set osmtoggledummy osmtoggle 0
execute as @s[tag=staffstatus,scores={OSM=2}]  run scoreboard players operation @a osmtoggle = osmtoggledummy osmtoggle
execute as @s[tag=staffstatus,scores={OSM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-Oneshot §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={OSM=2}]  run scoreboard players set osmtoggledummy OSM 0
#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27