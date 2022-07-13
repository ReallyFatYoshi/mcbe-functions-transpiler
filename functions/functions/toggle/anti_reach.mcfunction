execute as @s[tag=staffstatus]  run scoreboard players add armtoggledummy armtoggle 1
scoreboard players operation @a armtoggle = armtoggledummy armtoggle

#turn on
execute as @s[tag=staffstatus,scores={armtoggle=1}]  run scoreboard players operation @a armtoggle = armtoggledummy armtoggle
execute as @s[tag=staffstatus,scores={armtoggle=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-Reach §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute as @s[tag=staffstatus,scores={armtoggle=2}]  run scoreboard players operation @a armtoggle = armtoggledummy armtoggle
execute as @s[tag=staffstatus,scores={armtoggle=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-Reach §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={armtoggle=2}]  at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air 0 replace structure_void
execute as @s[tag=staffstatus,scores={armtoggle=2}]  run scoreboard players set armtoggledummy armtoggle 0
execute as @s[tag=staffstatus,scores={armtoggle=2}]  run scoreboard players operation @a armtoggle = armtoggledummy armtoggle

#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~