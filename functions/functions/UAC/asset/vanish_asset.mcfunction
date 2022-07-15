#Deny if not staff
execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute as @s[tag=!staffstatus]  run playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s[scores={OPAM=1}] ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=staffstatus]  run execute @s[scores={OPAM=0}] ~~~ scoreboard players add @s vnsh 1
execute as @s[tag=staffstatus,scores={OPAM=1}]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §6Anti OP Abuse §bdisables this command"}]}
#init vanish mode
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=1}]  run tag @s add spectate
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=1}]  run effect @s night_vision 99999999 10 true
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=1}]  run effect @s invisibility 99999999 10 true
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=1}]  run playsound note.pling @s ~ ~ ~
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=1}]  run function particle/nether_poof
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§bHas §2ENABLED §6Vanish Mode"}]}

#disable with second use
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=2}]  run tag @s remove spectate
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=2}]  run effect @s clear
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=2}]  run playsound note.pling @s ~ ~ ~
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=2}]  run function particle/nether_poof
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§bHas §cDISABLED §6Vanish Mode"}]}
execute as @s[tag=staffstatus,scores={OPAM=0,vnsh=2}]  run scoreboard players set @s vnsh 0

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide