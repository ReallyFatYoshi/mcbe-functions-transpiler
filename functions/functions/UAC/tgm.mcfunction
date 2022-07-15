#Deny if antiopabuse is on
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=staffstatus,scores={OPAM=0}]  run playsound note.pling @s ~ ~ ~
execute as @s[tag=!staffstatus]  run execute @s[scores={OPAM=1}] ~~~ playsound note.bass @s ~ ~ ~

#give the godmode status
execute as @s[tag=staffstatus,scores={OPAM=0}]  run tag @s add tgmGodMode
execute as @s[tag=staffstatus,scores={OPAM=0}]  run scoreboard objectives add tgmGodMode dummy
execute as @s[tag=staffstatus,scores={OPAM=0}]  run scoreboard players add @s tgmGodMode 1
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[scores={tgmGodMode=1}] ~~~ execute @s[tag=tgmGodMode] ~~~ tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§bHas §2ENABLED §6Godmode"}]}

#remove the godmode status
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[scores={tgmGodMode=2}] ~~~ execute @s[tag=tgmGodMode] ~~~ tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§bHas §cDISABLED §6Godmode"}]}
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[scores={tgmGodMode=2}] ~~~ tag @s remove tgmGodMode
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[scores={tgmGodMode=2}] ~~~ effect @s clear
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[scores={tgmGodMode=2}] ~~~ tag @s remove godmode
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[scores={tgmGodMode=2}] ~~~ scoreboard players reset @s tgmGodMode
#give godmode effects
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[scores={OPAM=0}] ~~~ execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ effect @s resistance 99999999 255 true
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ effect @s fire_resistance 99999999 255 true
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ effect @s water_breathing 99999999 10 true
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ effect @s regeneration 99999999 255 true
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ effect @s absorption 99999999 255 true
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ effect @s saturation 99999999 255 true
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ effect @s instant_health 99999999 255 true
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ effect @s health_boost 99999999 10 true
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ effect @s conduit_power 99999999 255 true
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ effect @s slow_falling 99999999 255 true
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ effect @s strength 99999999 50 true
execute as @s[tag=staffstatus,scores={OPAM=0}]  run execute @s[tag=tgmGodMode,scores={tgmGodMode=1}] ~~~ tag @s add godmode
scoreboard players set @s lstcmd 22