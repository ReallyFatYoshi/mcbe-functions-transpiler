//This is not meant to be seen

#Ban Checks for stats and stuff
execute as @s[tag=!staffstatus,tag=PermBan]  run scoreboard players add @s PermBan 1
execute as @s[tag=!staffstatus,tag=BanCBE]  run scoreboard players add @s BanCBE 1
execute as @s[tag=!staffstatus,tag=Ban]  run scoreboard players add @s Ban 1
execute as @s[tag=!staffstatus,tag=illegalitemban]  run scoreboard players add @s IIB 1
execute as @s[tag=!staffstatus,tag=BanFly]  run scoreboard players add @s BanFly 1
execute as @s[tag=!staffstatus,tag=BanPhase]  run scoreboard players add @s BanPhase 1
execute as @s[tag=!staffstatus,scores={warn=3}]  run scoreboard players add @s BanWarn 1

#1.17 ban chat messages  (06/22/2021)
execute @s[scores={BanCBE=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":"§b §¶§cwas banned due to CBE exploits"}]}
execute @s[scores={BanWarn=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":"§b §¶§cwas banned due to Reaching 3 Warnings"}]}
execute @s[scores={PermBan=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§cis UAC Global Banned and cannot be unbanned"}]}
execute @s[scores={Ban=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":" §¶§cWas Banned by a OPERATOR"}]}
execute @s[scores={IIB=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":"§b §¶§cwas banned due to Illegal Items"}]}
execute @s[scores={BanFly=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":"§b §¶§cwas banned due to Fly Hacks"}]}
execute @s[scores={BanPhase=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector":"@s"},{"text":"§b §¶§cwas banned due to Phase Hacks"}]}

execute as @s[tag=!staffstatus,tag=PermBan]  run function UAC/asset/ban_gameplay
execute as @s[tag=!staffstatus,tag=BanCBE]  run function UAC/asset/ban_gameplay
execute as @s[tag=!staffstatus,tag=Ban]  run function UAC/asset/ban_gameplay
execute as @s[tag=!staffstatus,tag=illegalitemban]  run function UAC/asset/ban_gameplay
execute as @s[tag=!staffstatus,tag=BanFly]  run function UAC/asset/ban_gameplay
execute as @s[tag=!staffstatus,tag=BanPhase]  run function UAC/asset/ban_gameplay
execute @s[tag=!staffstatus,scores={warn=3..}] ~~~ function UAC/asset/ban_gameplay

event entity @s[tag=!staffstatus,scores={BanPhase=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={BanFly=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={IIB=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={PermBan=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={BanWarn=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={BanCBE=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={warn=3..}] uac:ban_soft

#Prevents overflow from ban checks
execute as @s[scores={PermBan=4}]  run scoreboard players set @s PermBan 3
execute as @s[scores={BanCBE=4}]  run scoreboard players set @s BanCBE 3
execute as @s[scores={Ban=4}]  run scoreboard players set @s Ban 3
execute as @s[scores={IIB=4}]  run scoreboard players set @s IIB 3
execute as @s[scores={BanFly=4}]  run scoreboard players set @s BanFly 3
execute as @s[scores={BanPhase=4}]  run scoreboard players set @s BanPhase 3
execute as @s[scores={BanWarn=4}]  run scoreboard players set @s BanWarn 3