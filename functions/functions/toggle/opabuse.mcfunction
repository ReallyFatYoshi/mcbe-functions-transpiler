execute as @s[tag=ownerstatus]  run scoreboard players add opamtoggledummy OPAM 1
execute as @s[tag=ownerstatus]  run scoreboard players operation @a OPAM = opamtoggledummy OPAM

#turn on
execute as @s[tag=ownerstatus,scores={OPAM=1}]  run scoreboard players set opamtoggledummy opamtoggle 1
execute as @s[tag=ownerstatus,scores={OPAM=1}]  run scoreboard players operation @a opamtoggle = opamtoggledummy opamtoggle
execute as @s[tag=ownerstatus,scores={OPAM=1}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti OP Abuse §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute as @s[tag=ownerstatus,scores={OPAM=2}]  run scoreboard players set opamtoggledummy opamtoggle 0
execute as @s[tag=ownerstatus,scores={OPAM=2}]  run scoreboard players operation @a opamtoggle = opamtoggledummy opamtoggle
execute as @s[tag=ownerstatus,scores={OPAM=2}]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti OP Abuse §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute as @s[tag=ownerstatus,scores={OPAM=2}]  run scoreboard players set opamtoggledummy OPAM 0
#Deny Nonstaff
execute as @s[tag=!ownerstatus]  run tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly Ownerstatus can use this command"}]}
execute as @s[tag=!ownerstatus]  run execute @s ~~~ playsound note.bass @s ~ ~ ~
execute as @s[tag=ownerstatus]  run execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 67