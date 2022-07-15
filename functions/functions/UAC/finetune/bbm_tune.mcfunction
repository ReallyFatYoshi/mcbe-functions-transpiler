#turn on
execute as @s[tag=staffstatus]  run scoreboard players add ftDummy BBMCC 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a BBMCC = ftDummy BBMCC
execute as @s[tag=staffstatus,scores={BBMCC=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Bottom Bedrock §bhas been toggled §2Caves and Cliffs §bby §d"},{"selector":"@s"}]}
#turn off
execute as @s[tag=staffstatus,scores={BBMCC=2}]  run scoreboard players operation @a BBMCC = ftDummy BBMCC
execute as @s[tag=staffstatus,scores={BBMCC=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Bottom Bedrock §bhas been toggled §cy=0 §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={BBMCC=2}]  run scoreboard players set ftDummy BBMCC 0

#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

#needs a dummy objective for add-switch to work. But I'm too fucked up and lazy for that right now.


scoreboard players operation @a BBMCC = ftDummy BBMCC
#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide