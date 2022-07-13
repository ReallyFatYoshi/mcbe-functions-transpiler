execute as @s[tag=!staffstatus]  run playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run playsound note.pling @s ~ ~ ~
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC ► §bYou must be staff to do this command. The tag for staff is §6staffstatus"}]}

tellraw @s[tag=staffstatus] {"rawtext":[{"text":"§¶§c---------- Help §7||§c Unban Window §7||§c §2/function UAC/unban_window §c----------"}]}
tellraw @s[tag=staffstatus] {"rawtext":[{"text":"§¶§bThis command is used to allow a player who is hard banned to enter the realm again."}]}
tellraw @s[tag=staffstatus] {"rawtext":[{"text":"§¶§bAfter first use, UAC will start allowing banned players to join the realm, and then be unbanned when they do."}]}
tellraw @s[tag=staffstatus] {"rawtext":[{"text":"§¶§bOnce they join successfully, you can use the command again to mannualy close it if you still have time left. \nDo not leave the realm until the window is closed."}]}