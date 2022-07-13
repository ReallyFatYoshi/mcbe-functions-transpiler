scoreboard objectives add has_xx dummy
scoreboard players set @s has_xx 0
execute as @s[tag=staffstatus]  run time set 1900
execute as @s[tag=staffstatus]  run gamerule dodaylightcycle false
execute as @s[tag=staffstatus]  run gamerule doweathercycle false
execute as @s[tag=staffstatus]  run function UAC/asset/version
execute as @s[tag=staffstatus]  run function UAC/test
execute as @s[tag=staffstatus]  run scoreboard players set @a welcome 90
execute as @s[tag=staffstatus]  run scoreboard players set @a welcomed 0
event entity @a[tag=staffstatus] uac:test_experimental

tag @a remove theif


#Deny NonDeveloper
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide