#turn on
execute as @s[tag=staffstatus]  run scoreboard players add ftDummy CBECO 1
execute as @s[tag=staffstatus]  run scoreboard players operation @a CBECO = ftDummy CBECO
execute as @s[tag=staffstatus,scores={CBECO=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-CBE Tile Remove §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute as @s[tag=staffstatus,scores={CBECO=2}]  run scoreboard players operation @a CBECO = ftDummy CBECO
execute as @s[tag=staffstatus,scores={CBECO=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-CBE Tile Remove §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={CBECO=2}]  run scoreboard players set ftDummy CBECO 0

#Deny Nonstaff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

#needs a dummy objective for add-switch to work. But I'm too fucked up and lazy for that right now.


scoreboard players operation @a CBECO = ftDummy CBECO
#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide