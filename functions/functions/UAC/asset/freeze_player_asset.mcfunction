#If player is staff
execute as @s[tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§bis staff and can't be frozen."}]}
execute as @s[tag=staffstatus]  run execute @a[tag=staffstatus] ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=!staffstatus]  run execute @a[tag=staffstatus] ~~~ playsound note.pling @s ~ ~ ~

#If Not Frozen / frozen for the first time, then freeze
execute as @s[tag=!staffstatus]  run scoreboard players add @s fzplr 1
execute as @s[tag=!staffstatus,scores={fzplr=1}]  run gamerule sendcommandfeedback false
execute as @s[tag=!staffstatus,scores={fzplr=1}]  run effect @s slowness 99999999 255
execute as @s[tag=!staffstatus,scores={fzplr=1}]  run effect @s strength 99999999 255
execute as @s[tag=!staffstatus,scores={fzplr=1}]  at @s run tp @s ~ ~1 ~
execute as @s[tag=!staffstatus,scores={fzplr=1}]  at @s run fill ~ ~2 ~ ~ ~-2 ~ deny
execute as @s[tag=!staffstatus,scores={fzplr=1}]  at @s run summon armor_stand fzplr
execute as @s[tag=!staffstatus,scores={fzplr=1}]  at @s run fill ~1~2~1 ~-1~-2~-1 structure_void 0 replace air
execute as @s[tag=!staffstatus,scores={fzplr=1}]  at @s run fill ~~~ ~~1~ air
execute as @s[tag=!staffstatus,scores={fzplr=1}]  run gamemode a
execute as @s[tag=!staffstatus,scores={fzplr=1}]  run effect @e[name=fzplr,type=armor_stand] invisibility 99999999 2 true
execute as @s[tag=!staffstatus,scores={fzplr=1}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§bhas been §6frozen §bby a operator."}]}

#If frozen then init unfreeze
execute as @s[tag=!staffstatus,scores={fzplr=2}]  run effect @s clear
execute as @s[tag=!staffstatus,scores={fzplr=2}]  run gamemode s
execute as @s[tag=!staffstatus,scores={fzplr=2}]  at @s run fill ~2 ~3 ~2 ~-2 ~-3 ~-2 air 0 replace structure_void
execute as @s[tag=!staffstatus,scores={fzplr=2}]  at @s run fill ~2 ~3 ~2 ~-2 ~-3 ~-2 air 0 replace deny
execute as @s[tag=!staffstatus,scores={fzplr=2}]  run kill @e[r=3,name=fzplr]
execute as @s[tag=!staffstatus,scores={fzplr=2}]  run gamerule sendcommandfeedback true
execute as @s[tag=!staffstatus,scores={fzplr=2}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§bhas been §6unfrozen §bby a operator."}]}
execute as @s[tag=!staffstatus,scores={fzplr=2}]  run scoreboard players set @s fzplr 0

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide