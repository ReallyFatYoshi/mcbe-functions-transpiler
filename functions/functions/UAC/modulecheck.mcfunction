execute as @s  run function UAC/asset/modulecheckasset
scoreboard players set @s lstcmd 18


execute as @s[tag=staffstatus]  run playsound note.pling @s ~ ~ ~
execute as @s[tag=!staffstatus]  run playsound note.bass @s ~ ~ ~