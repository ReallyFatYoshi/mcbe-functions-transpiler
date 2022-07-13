execute as @s[tag=ownerstatus]  run scoreboard players add ssmtoggledummy SSM 1
execute as @s[tag=ownerstatus]  run scoreboard players operation @a SSM = ssmtoggledummy SSM

#turn on
execute as @s[tag=ownerstatus,scores={SSM=1}]  run scoreboard players set ssmtoggledummy ssmtoggle 1
execute as @s[tag=ownerstatus,scores={SSM=1}]  run scoreboard players operation @a ssmtoggle = ssmtoggledummy ssmtoggle
execute as @s[tag=ownerstatus,scores={SSM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Fake Staff Protection §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute as @s[tag=ownerstatus,scores={SSM=2}]  run scoreboard players set ssmtoggledummy ssmtoggle 0
execute as @s[tag=ownerstatus,scores={SSM=2}]  run scoreboard players operation @a ssmtoggle = ssmtoggledummy ssmtoggle
execute as @s[tag=ownerstatus,scores={SSM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Fake Staff Protection §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=ownerstatus,scores={SSM=2}]  run scoreboard players set ssmtoggledummy SSM 0
#Deny Nonstaff
execute as @s[tag=!ownerstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► This is ment for owners who have more knowledge with add-ons.\nPreform the Staff Key, then the Ownerstatus Key to unlock this command.\nWhen this is enabled, you must execute the Staff key onto your staff so they may have the staffstatus tag.\nFor More info please join our Discord"}]}
execute as @s[tag=!ownerstatus]  run function UAC/asset/discord
execute as @s[tag=!ownerstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=ownerstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27