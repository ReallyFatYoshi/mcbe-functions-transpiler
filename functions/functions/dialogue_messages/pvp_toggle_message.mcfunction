scoreboard players add @s pvp 1
#toggle off
tellraw @s[scores={pvp=1}] {"rawtext":[{"text":"§¶§cUAC ► §6Player PVP §bhas been §cDISABLED §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={pvp=1}]  run gamerule pvp false
execute as @s[tag=staffstatus,scores={pvp=1}]  run scoreboard players operation @a pvp = pvpdummy pvp

#toggle on
tellraw @s[scores={pvp=2}] {"rawtext":[{"text":"§¶§cUAC ► §6Player PVP §bhas been §2ENABLED §bby §d"},{"selector":"@s"}]}
execute as @s[tag=staffstatus,scores={pvp=2}]  run gamerule pvp true
execute as @s[tag=staffstatus,scores={pvp=2}]  run scoreboard players operation @a pvp = pvpdummy pvp
execute as @s[tag=staffstatus,scores={pvp=2}]  run scoreboard players set @s pvp 0

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide