scoreboard objectives add has_xx dummy
scoreboard players set @s has_xx 0
execute @s[tag=staffstatus] ~~~ time set 1900
execute @s[tag=staffstatus] ~~~ gamerule dodaylightcycle false
execute @s[tag=staffstatus] ~~~ gamerule doweathercycle false
execute @s[tag=staffstatus] ~~~ function UAC/asset/version
execute @s[tag=staffstatus] ~~~ function UAC/test
execute @s[tag=staffstatus] ~~~ scoreboard players set @a welcome 90
execute @s[tag=staffstatus] ~~~ scoreboard players set @a welcomed 0
event entity @a[tag=staffstatus] uac:test_experimental

tag @a remove theif


#Deny NonDeveloper
execute @s[tag=!staffstatus] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute @s[tag=!staffstatus] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=staffstatus] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide