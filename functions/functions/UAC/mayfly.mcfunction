execute as @s[tag=!staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §¶§bHas been whitelisted from Anti-Fly Module"}]}
execute as @s[tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §¶§bdoes not need this because they are staff."}]}

execute as @s[tag=!staffstatus]  run scoreboard players set @s 2KK001 725
scoreboard players set @s lstcmd 16