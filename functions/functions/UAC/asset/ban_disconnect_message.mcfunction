execute as @s[tag=!theif]  run scoreboard players set @s[tag=Ban] Ban 1
execute as @s[tag=!theif,scores={Ban=1}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §¶§b► §d"},{"selector":"@s"},{"text":" §¶§bhas been banned by a Operator"}]}
execute as @s[tag=!theif,tag=PermBan]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §¶§b► §d"},{"selector":"@s"},{"text":" §¶§bis UAC Global Banned and may not join"}]}
function UAC/asset/ban_check_asset
playsound note.bass @a ~ ~ ~


execute as @s[scores={welcomed=1,XNEZ=!3892}]  run tellraw @a {"rawtext":[{"text":"§¶§cUNAUTHORIZED UAC §¶§b► §dLooks like the owner tried to remove credit files. §bDiscord.gg/7Us7ER8WUw"}]}
execute as @s[scores={welcomed=1,XNEF=!3342}]  run tellraw @a {"rawtext":[{"text":"§¶§cUNAUTHORIZED UAC §¶§b► §dLooks like the owner tried to remove credit files. §bDiscord.gg/7Us7ER8WUw"}]}

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide