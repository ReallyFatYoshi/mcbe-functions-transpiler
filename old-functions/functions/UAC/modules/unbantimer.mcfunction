hide
#unban window system
execute @s[tag=staffstatus,scores={unban=1}] ~~~ scoreboard players remove @s unbantimer 1 

execute @s[tag=staffstatus,scores={unban=1}] ~~~ execute @a[tag=PermBan] ~~~ function UAC/asset/ban_asset_remove
execute @s[tag=staffstatus,scores={unban=1}] ~~~ execute @a[tag=BanCBE] ~~~ function UAC/asset/ban_asset_remove
execute @s[tag=staffstatus,scores={unban=1}] ~~~ execute @a[tag=Ban] ~~~ function UAC/asset/ban_asset_remove
execute @s[tag=staffstatus,scores={unban=1}] ~~~ execute @a[tag=illegalitemban] ~~~ function UAC/asset/ban_asset_remove
execute @s[tag=staffstatus,scores={unban=1}] ~~~ execute @a[tag=BanFly] ~~~ function UAC/asset/ban_asset_remove
execute @s[tag=staffstatus,scores={unban=1}] ~~~ execute @a[tag=BanPhase] ~~~ function UAC/asset/ban_asset_remove
execute @s[tag=staffstatus,scores={unban=1}] ~~~ execute @a[scores={warn=3..}] ~~~ function UAC/asset/ban_asset_remove

execute @s[tag=staffstatus,scores={unban=1,unbantimer=0..15}] ~~~ scoreboard players set @s hometp 3
execute @s[tag=staffstatus,scores={unban=1,unbantimer=0..8}] ~~~ scoreboard players set @s unban 0
execute @s[tag=staffstatus,scores={unban=0}] ~~~ scoreboard players reset @s unbantimer
