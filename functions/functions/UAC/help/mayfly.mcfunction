execute as @s[tag=!staffstatus]  run playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run playsound note.pling @s ~ ~ ~
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC ► §bYou must be staff to do this command. The tag for staff is §6staffstatus"}]}

tellraw @s[tag=staffstatus] {"rawtext":[{"text":"§¶§c---------- Help §7||§c MayFly §7||§c §2/execute (player) ~~~ function UAC/mayfly §c----------"}]}
tellraw @s[tag=staffstatus] {"rawtext":[{"text":"§¶§bThis will white list the targeted player from the UAC anti-fly."}]}
tellraw @s[tag=staffstatus] {"rawtext":[{"text":"§¶§bThis command does not give them the `mayfly` ability from Education Edition. I just thought the name was fitting."}]}