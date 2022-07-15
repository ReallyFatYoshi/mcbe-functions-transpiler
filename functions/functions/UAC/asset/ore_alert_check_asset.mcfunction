#Deny if not staff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run playsound note.pling @s ~ ~ ~

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide

#Check for which alerts are enabled
execute as @s[scores={ironmd=1},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Iron Alerts §7[ §2ENABLED §7]"}]}
execute as @s[scores={ironmd=0},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Iron Alerts §7[ §cDISABLED §7]"}]}

execute as @s[scores={goldmd=1},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Gold Alerts §7[ §2ENABLED §7]"}]}
execute as @s[scores={goldmd=0},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Gold Alerts §7[ §cDISABLED §7]"}]}

execute as @s[scores={emeraldmd=1},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Emerald Alerts §7[ §2ENABLED §7]"}]}
execute as @s[scores={emeraldmd=0},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Emerald Alerts §7[ §cDISABLED §7]"}]}

execute as @s[scores={lapizmd=1},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Lapis Lazuli Alerts §7[ §2ENABLED §7]"}]}
execute as @s[scores={lapizmd=0},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Lapis Lazuli Alerts §7[ §cDISABLED §7]"}]}

execute as @s[scores={diamondmd=1},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Diamond Alerts §7[ §2ENABLED §7]"}]}
execute as @s[scores={diamondmd=0},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Diamond Alerts §7[ §cDISABLED §7]"}]}

execute as @s[scores={scrapmd=1},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Netherite Scrap Alerts §7[ §2ENABLED §7]"}]}
execute as @s[scores={scrapmd=0},tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §6Netherite Scrap Alerts §7[ §cDISABLED §7]"}]}