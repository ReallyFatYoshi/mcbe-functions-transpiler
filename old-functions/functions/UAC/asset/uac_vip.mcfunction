
scoreboard players add @s vipt 1
tag @s[name="NightwalkerLots"] add UAC_vip
tag @s[name="JayyGhost290"] add UAC_vip
tag @s[name="PlazmaticSoul"] add UAC_vip
tag @s[name="Zombieclinic"] add UAC_vip
tag @s[name="WinFan3672"] add UAC_vip
tag @s[name="Tingz091"] add UAC_vip
tag @s[name="Dreaxzy6761"] add UAC_vip

scoreboard players set @s[tag=UAC_vip,scores={vipt=1}] VIPM 2293
scoreboard players set @s[tag=!UAC_vip,scores={vipt=1}] VIPM 0
scoreboard players reset @s[tag=!UAC_vip] vipt 

tellraw @s[tag=!UAC_vip,scores={VIPM=!2293}] {"rawtext":[{"text":"§¶§cUAC §6VIP §c§lACCESS DENIED §r§d"},{"selector":"@s"},{"text":" §¶§bis not a VIP donor Access."}]}
tellraw @s[tag=!UAC_vip,scores={VIPM=!2293}] {"rawtext":[{"text":"§¶§cUAC §6VIP §c§lDONATE IN THE DISCORD FOR ACCESS §r§7: §dDiscord.gg/7Us7ER8WUw"}]}
tellraw @s[tag=UAC_vip,scores={VIPM=2293,vipt=1}] {"rawtext":[{"text":"§¶§cUAC ► §6VIP §bfeatures §2ENABLED §bfor §r§d"},{"selector":"@s"},{"text":", §¶§b"}]}
tellraw @s[tag=UAC_vip,scores={VIPM=2293,vipt=2}] {"rawtext":[{"text":"§¶§cUAC ► §6VIP §bfeatures §cDISABLED §bfor §r§d"},{"selector":"@s"},{"text":", §¶§b"}]}
playsound note.pling @s[tag=UAC_vip] ~ ~ ~
playsound note.bass @s[tag=!UAC_vip] ~ ~ ~

scoreboard players set @s[scores={vipt=2}] VIPM 0
tag @s[scores={vipt=2}] remove UAC_vip
scoreboard players reset @s[scores={vipt=2}] vipt


hide