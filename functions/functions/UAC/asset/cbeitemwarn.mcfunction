#tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §¶§cFlagged §d"},{"selector":"@s"},{"text":"§¶§b for attempting CBE"}]}

scoreboard players add @s warncbe 1
playsound random.break @s ~ ~ ~
execute as @s[scores={warncbe=3}]  run scoreboard players add @s warn 1
execute as @s[scores={warncbe=6}]  run scoreboard players add @s warn 1
execute @a[scores={warncbe=9..}] ~~~ tag @s add BanCBE

#cbewarn alerts
execute as @s[scores={warncbe=1}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Anti CBE §btemp kicked §d"},{"selector":"@s"},{"text":" §¶§bfor attempting CBE §7[§c1§7/§29§7]"}]}
execute as @s[scores={warncbe=2}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Anti CBE §btemp kicked §d"},{"selector":"@s"},{"text":" §¶§bfor attempting CBE §7[§c2§7/§29§7]"}]}
execute as @s[scores={warncbe=3}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Anti CBE §btemp kicked §d"},{"selector":"@s"},{"text":" §¶§bfor attempting CBE §7[§c3§7/§29§7]"}]}
execute as @s[scores={warncbe=4}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Anti CBE §btemp kicked §d"},{"selector":"@s"},{"text":" §¶§bfor attempting CBE §7[§c4§7/§29§7]"}]}
execute as @s[scores={warncbe=5}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Anti CBE §btemp kicked §d"},{"selector":"@s"},{"text":" §¶§bfor attempting CBE §7[§c5§7/§29§7]"}]}
execute as @s[scores={warncbe=6}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Anti CBE §btemp kicked §d"},{"selector":"@s"},{"text":" §¶§bfor attempting CBE §7[§c6§7/§29§7]"}]}
execute as @s[scores={warncbe=7}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Anti CBE §btemp kicked §d"},{"selector":"@s"},{"text":" §¶§bfor attempting CBE §7[§c7§7/§29§7]"}]}
execute as @s[scores={warncbe=8}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Anti CBE §btemp kicked §d"},{"selector":"@s"},{"text":" §¶§bfor attempting CBE §7[§c8§7/§29§7]"}]}
execute as @s[scores={warncbe=9}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Anti CBE §btemp kicked §d"},{"selector":"@s"},{"text":" §¶§bfor attempting CBE §7[§c9§7/§29§7]"}]}

playsound note.bass @a ~ ~ ~

#base warns after attempts divisable by 3
execute as @s[scores={warncbe=3}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC ► §bYou have §7[§c1§7/§23§7] §b UAC warnings"}]}
execute as @s[scores={warncbe=6}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC ► §bYou have been UAC Warned. Your next warning will result in a Season Ban. §7[§c2§7/§23§7]"}]}

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide