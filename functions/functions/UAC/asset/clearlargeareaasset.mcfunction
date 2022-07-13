#Sets up scoreboard
scoreboard players add @s[tag=staffstatus] cleararealarge 1

#If has clearcheck, then clear area
execute as @p[scores={cleararealarge=2},tag=staffstatus]  at @s run summon armor_stand cleararealarge
execute as @p[scores={cleararealarge=2},tag=staffstatus]  run ~15 summon armor_stand cleararealarge
execute as @p[scores={cleararealarge=2},tag=staffstatus]  run ~-15 summon armor_stand cleararealarge
execute as @p[scores={cleararealarge=2},tag=staffstatus]  run ~15 summon armor_stand cleararealarge
execute as @p[scores={cleararealarge=2},tag=staffstatus]  run ~-15 summon armor_stand cleararealarge
execute as @p[scores={cleararealarge=2},tag=staffstatus]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §¶§bjust cleared a large area"}]}
execute as @e[type=armor_stand,name=cleararealarge]  at @s run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 air
kill @e[type=armor_stand,name=cleararealarge]

#Make-Shift "are you sure"
execute as @p[scores={cleararealarge=1},tag=staffstatus]  run tellraw @p[tag=!clearcheck] {"rawtext":[{"text":"§¶§cUAC► This will fill all blocks within a 60 Squared radius with air!"}]}
execute as @p[scores={cleararealarge=1},tag=staffstatus]  run tellraw @p[tag=!clearcheck] {"rawtext":[{"text":"§¶§cUAC► This can't be undone! Execute command again if you're sure."}]}
execute as @p[scores={cleararealarge=2},tag=staffstatus]  run tellraw @p[tag=!clearcheck] {"rawtext":[{"text":"§¶§cUAC► The area has been cleared with air."}]}

execute as @s[tag=!staffstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► You must be staff to use this command!"}]}
execute as @s[tag=staffstatus]  run playsound note.pling @s ~ ~ ~
execute as @s[tag=!staffstatus]  run playsound note.bass @s ~ ~ ~

#Remove tag after area is cleared
execute as @p[scores={cleararealarge=2}]  run scoreboard players reset @s cleararealarge
#60 Squared radius

scoreboard players set @s lstcmd 9

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide