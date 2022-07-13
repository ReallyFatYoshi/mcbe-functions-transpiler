#Anti-Creative Stuff
gamemode s @s[m=c,tag=!staffstatus]
scoreboard players add @s gmc_flag 1
kill @s

# creative flag alerts
execute as @s[tag=!staffstatus,scores={gmc_flag=1}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§bhas been flagged for §cCREATIVE MODE §7[§c1§7/§24§7]"}]}
execute as @s[tag=!staffstatus,scores={gmc_flag=2}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§bhas been flagged for §cCREATIVE MODE §7[§c2§7/§24§7]"}]}
execute as @s[tag=!staffstatus,scores={gmc_flag=3}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§bhas been flagged for §cCREATIVE MODE §7[§c3§7/§24§7]"}]}
execute as @s[tag=!staffstatus,scores={gmc_flag=4}]  run tag @s add BanCreative
playsound note.bass @a ~ ~ ~

#ban message
execute as @s[tag=!staffstatus,tag=BanCreative,scores={gmc_flag=4}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":"§b's §¶§cgameplay has been restricted due to changing gamemodes"}]}

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide