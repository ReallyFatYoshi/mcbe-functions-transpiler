execute as @s[tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §¶§bis staff and cannot be warned"}]}

execute as @s[tag=!staffstatus]  run scoreboard players add @s warn 1
execute as @s[tag=!staffstatus]  run playsound random.break @s ~ ~ ~
execute as @s[tag=!staffstatus]  run execute @s[scores={warn=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC ► §bYou have been Warned §c[1/3]"}]}
execute as @s[tag=!staffstatus]  run execute @s[scores={warn=2}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC ► §bYou have been Warned. Your next warning will result in a Season Ban.§c [2/3]"}]}
execute as @s[tag=!staffstatus]  run execute @s[scores={warn=3}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC ► §bLast Warning §d"},{"selector":"@s"},{"text":"§b, You may no longer play this realm.§c [3/3]"}]}
execute as @s[tag=!staffstatus]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §¶§cwas warned by a operator"}]}
execute as @s[tag=!staffstatus]  run execute @s[scores={warn=4..99}] ~~~ scoreboard players set @s warn 3
scoreboard players set @s lstcmd 25