hide
#unban window system
execute as @s[tag=staffstatus,scores={unban=1}]  run scoreboard players remove @s unbantimer 1

execute as @s[tag=staffstatus,scores={unban=1}]  run execute @a[tag=PermBan] ~~~ function UAC/asset/ban_asset_remove
execute as @s[tag=staffstatus,scores={unban=1}]  run execute @a[tag=BanCBE] ~~~ function UAC/asset/ban_asset_remove
execute as @s[tag=staffstatus,scores={unban=1}]  run execute @a[tag=Ban] ~~~ function UAC/asset/ban_asset_remove
execute as @s[tag=staffstatus,scores={unban=1}]  run execute @a[tag=illegalitemban] ~~~ function UAC/asset/ban_asset_remove
execute as @s[tag=staffstatus,scores={unban=1}]  run execute @a[tag=BanFly] ~~~ function UAC/asset/ban_asset_remove
execute as @s[tag=staffstatus,scores={unban=1}]  run execute @a[tag=BanPhase] ~~~ function UAC/asset/ban_asset_remove
execute as @s[tag=staffstatus,scores={unban=1}]  run execute @a[scores={warn=3..}] ~~~ function UAC/asset/ban_asset_remove

execute @s[tag=staffstatus,scores={unban=1,unbantimer=0..15}] ~~~ scoreboard players set @s hometp 3
execute @s[tag=staffstatus,scores={unban=1,unbantimer=0..8}] ~~~ scoreboard players set @s unban 0
execute as @s[tag=staffstatus,scores={unban=0}]  run scoreboard players reset @s unbantimer