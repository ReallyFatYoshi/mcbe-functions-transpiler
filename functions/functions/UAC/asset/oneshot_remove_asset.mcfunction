execute as @s[tag=can_oneshot,scores={osmtoggle=1}]  run tag @s remove can_oneshot
execute as @s[tag=!can_oneshot,scores={osmtoggle=1}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti Onshot §bHealth 70% §d"},{"selector":"@s"},{"text":"§b! §¶§bprotection from oneshot blows by players §cDISABLED"}]}

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide