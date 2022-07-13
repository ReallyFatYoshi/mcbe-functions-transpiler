# This executes on THE PLAYER when every time they join ( Good for setting up combat logging and such )
# If gametest isn't enabled it will use the online player objective from autolagclear package
# This is no longer called from gametest - 3/8/22

execute as @s[scores={in_combat=1,clmtoggle=1}]  run function UAC/asset/clog_punish

#Remove player from realm
execute as @s[tag=!staffstatus,tag=PermBan]  run execute @s ~~~ function UAC/asset/ban_disconnect_message
execute as @s[tag=!staffstatus,tag=BanCBE]  run execute @s ~~~ function UAC/asset/ban_disconnect_message
execute as @s[tag=!staffstatus,tag=Ban]  run execute @s ~~~ function UAC/asset/ban_disconnect_message
execute as @s[tag=!staffstatus,tag=illegalitemban]  run execute @s ~~~ function UAC/asset/ban_disconnect_message
execute as @s[tag=!staffstatus,tag=BanFly]  run execute @s ~~~ function UAC/asset/ban_disconnect_message
execute as @s[tag=!staffstatus,tag=BanPhase]  run execute @s ~~~ function UAC/asset/ban_disconnect_message
execute @s[tag=!staffstatus,scores={warn=3..}] ~~~ execute @s ~~~ function UAC/asset/ban_disconnect_message

event entity @s[tag=!staffstatus,scores={BanPhase=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={BanFly=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={IIB=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={PermBan=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={BanWarn=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={BanCBE=1..}] uac:ban_soft
event entity @s[tag=!staffstatus,scores={warn=3..}] uac:ban_soft

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide