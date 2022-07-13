execute as @s[tag=!can_oneshot,scores={osmtoggle=1}]  run tag @s add can_oneshot
execute as @s[tag=can_oneshot,scores={osmtoggle=1}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti Onshot §bHealth 100% §d"},{"selector":"@s"},{"text":"§b! §¶§bNow protection you from One-hit blows from players!"}]}

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide