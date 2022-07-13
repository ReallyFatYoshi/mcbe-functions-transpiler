#tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §¶§cFlagged §d"},{"selector":"@s"},{"text":"§¶§b for spawning items"}]}

scoreboard players add @s warnillegal 1
playsound random.break @s ~ ~ ~
execute as @s[scores={warnillegal=3}]  run scoreboard players add @s warn 1
execute as @s[scores={warnillegal=6}]  run scoreboard players add @s warn 1
execute @a[scores={warnillegal=9..}] ~~~ tag @s add illegalitemban

#cbewarn alerts
execute as @s[scores={warnillegal=1}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Unobtainable Items §bflagged §d"},{"selector":"@s"},{"text":" §¶§bfor spawning items  §7[§c1§7/§29§7]"}]}
execute as @s[scores={warnillegal=2}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Unobtainable Items §bflagged §d"},{"selector":"@s"},{"text":" §¶§bfor spawning items  §7[§c2§7/§29§7]"}]}
execute as @s[scores={warnillegal=3}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Unobtainable Items §bflagged §d"},{"selector":"@s"},{"text":" §¶§bfor spawning items  §7[§c3§7/§29§7]"}]}
execute as @s[scores={warnillegal=4}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Unobtainable Items §bflagged §d"},{"selector":"@s"},{"text":" §¶§bfor spawning items  §7[§c4§7/§29§7]"}]}
execute as @s[scores={warnillegal=5}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Unobtainable Items §bflagged §d"},{"selector":"@s"},{"text":" §¶§bfor spawning items  §7[§c5§7/§29§7]"}]}
execute as @s[scores={warnillegal=6}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Unobtainable Items §bflagged §d"},{"selector":"@s"},{"text":" §¶§bfor spawning items  §7[§c6§7/§29§7]"}]}
execute as @s[scores={warnillegal=7}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Unobtainable Items §bflagged §d"},{"selector":"@s"},{"text":" §¶§bfor spawning items  §7[§c7§7/§29§7]"}]}
execute as @s[scores={warnillegal=8}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Unobtainable Items §bflagged §d"},{"selector":"@s"},{"text":" §¶§bfor spawning items  §7[§c8§7/§29§7]"}]}
execute as @s[scores={warnillegal=9}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Unobtainable Items §bflagged §d"},{"selector":"@s"},{"text":" §¶§bfor spawning items  §7[§c9§7/§29§7]"}]}
playsound note.bass @a ~ ~ ~
#base warns after attempts divisable by 3
execute as @s[scores={warnillegal=3}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC ► §bYou have §7[§c1§7/§23§7] §b UAC warnings"}]}
execute as @s[scores={warnillegal=6}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC ► §bYou have been UAC Warned. Your next warning will result in a Season Ban. §7[§c2§7/§23§7]"}]}

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide