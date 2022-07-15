execute as @s[tag=staffstatus]  run playsound note.pling @s ~ ~ ~
execute as @s[tag=!staffstatus]  run playsound note.bass @s ~ ~ ~
execute as @p[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC ► §bYou must be staff to do this command. The tag for staff is §6staffstatus"}]}

execute as @s[tag=staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC ► §b`/function UAC/lastcommand` will not be recorded in the command history"}]}
execute as @s[tag=staffstatus]  run function UAC/asset/last_command_check_asset