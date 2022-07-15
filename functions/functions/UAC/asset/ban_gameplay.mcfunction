tp @s 0 900 0
gamemode a @s
effect @s blindness 9999 99 true
effect @s slow_falling 99999 99 true
effect @s strength 99999 255 true
function UAC/asset/inv_lock

execute as @s[tag=!staffstatus]  run title @s[tag=PermBan] title §¶§cUAC ► You are UAC Global Banned!
execute as @s[tag=!staffstatus]  run title @s[tag=BanCBE] title §¶§cUAC ► Flagged for CBE
execute as @s[tag=!staffstatus]  run title @s[tag=BanCreative] title §¶§cUAC ► Flagged Creative Mode
execute as @s[tag=!staffstatus]  run title @s[tag=Ban] title §¶§cUAC ► BANNED BY OPERATOR
execute as @s[tag=!staffstatus]  run title @s[tag=illegalitemban] title §¶§cUAC ► Flagged for Illegal Items
execute as @s[tag=!staffstatus]  run title @s[tag=BanFly] title §¶§cUAC ► Flagged for Fly Hacks
execute as @s[tag=!staffstatus]  run title @s[tag=BanPhase] title §¶§cUAC ► Flagged for No Clip
execute as @s[tag=!staffstatus]  run title @s[scores={warn=3}] title §¶§cUAC ► Third Warning Reached
#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide