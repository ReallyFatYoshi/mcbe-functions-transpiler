execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► You must be staff to use this command!"}]}

execute as @s[tag=staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§c=========Item Ban Status========="}]}

#Checklist for all bannable items
execute as @s[tag=staffstatus,scores={BNA=0}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bHarming Arrows §7[ §¶§2ALLOWED §7]"}]}
execute as @s[tag=staffstatus,scores={BNA=1}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bHarming Arrows §7[ §¶§cBANNED §7]"}]}
execute as @s[tag=staffstatus,scores={BNM=0}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bMaps §7[ §¶§2ALLOWED §7]"}]}
execute as @s[tag=staffstatus,scores={BNM=1}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bMaps §7[ §¶§cBANNED §7]"}]}
execute as @s[tag=staffstatus,scores={BNCB=0}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bCrossbows §7[ §¶§2ALLOWED §7]"}]}
execute as @s[tag=staffstatus,scores={BNCB=1}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bCrossbows §7[ §¶§cBANNED §7]"}]}
execute as @s[tag=staffstatus,scores={BNSB=0}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bShulkerBox §7[ §¶§2ALLOWED §7]"}]}
execute as @s[tag=staffstatus,scores={BNSB=1}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bShulkerBox §7[ §¶§cBANNED §7]"}]}
execute as @s[tag=staffstatus,scores={BNBQ=0}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bBook and Quill §7[ §¶§2ALLOWED §7]"}]}
execute as @s[tag=staffstatus,scores={BNBQ=1}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bBook and Quill §7[ §¶§cBANNED §7]"}]}
execute as @s[tag=staffstatus,scores={BNTN=0}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bTNT §7[ §¶§2ALLOWED §7]"}]}
execute as @s[tag=staffstatus,scores={BNTN=1}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bTNT §7[ §¶§cBANNED §7]"}]}
execute as @s[tag=staffstatus,scores={BNTD=0}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bTrident §7[ §¶§2ALLOWED §7]"}]}
execute as @s[tag=staffstatus,scores={BNTD=1}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bTrident §7[ §¶§cBANNED §7]"}]}

scoreboard players set @s lstcmd 14
#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide