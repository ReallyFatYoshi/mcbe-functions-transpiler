execute as @s[m=s]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":"§b is in §2survival §bmode"}]}
execute as @s[m=c]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":"§b is in §2creative §bmode"}]}
execute as @s[m=a]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":"§b is in §2adventure §bmode"}]}


#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide