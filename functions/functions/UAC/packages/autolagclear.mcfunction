#this function is ran on a random player every 5 seconds ( helps for TPS control )

scoreboard players reset @s lagtimer
execute as @a[tag=entityclear]  run tag @a[tag=!entityclear] add nullclear
execute as @r[tag=!nullclear]  run function UAC/packages/entitycount
execute as @a[scores={bbmtoggle=1}]  run function UAC/modules/bottombedrock
#execute @s[scores={wbmtoggle=1}] ~~~ function UAC/modules/worldborder
execute as @a[scores={ibmtoggle=1}]  run function UAC/modules/itemban
execute as @a[scores={ssmtoggle=1}]  run function UAC/modules/staffstatus
execute as @s[scores={nemtoggle=1},tag=!staffstatus]  run function UAC/asset/echestwipe
function UAC/modules/enchanted_armor
function UAC/packages/bans
function UAC/modules/permban
function UAC/modules/ownerstatus
function UAC/asset/toggle_sync
function UAC/modules/hotbarmessage

execute @a[scores={cbetime=0..2}] ~~~ gamerule commandblocksenabled true
gamerule randomtickspeed 1
execute as @a[scores={chatspam=0}]  run tag @s remove muted

execute as @a[tag=UAC_vip,tag=!is_moving,scores={VIPM=2293}]   run function particle/nether_poof_small

#player counter
scoreboard players reset playerdummy playercount
execute as @a  run scoreboard players add playerdummy playercount 1

#Extra stuff for TPS control
execute as @s  at @s run execute @e[r=100,type=xp_orb] ~~~ tp @s[type=xp_orb] @p
#suicide counter
scoreboard players add @s[scores={suicide=1..}] suicide 1
kill @s[scores={suicide=11}]
scoreboard players set @s[scores={suicide=11}] hometp 3
scoreboard players set @s[scores={suicide=11}] suicide 0

#This makes sure everyone doesn't get flagged for c-logging when the module is first turned on
#As the only other thing that resets their in_combat is the timer c-log timer
scoreboard players set @a[scores={clmtoggle=0}] in_combat 0

#This runs a function on players rejoining
execute as @a[scores={online=0}]  run function UAC/packages/playerjoined
scoreboard players set * online 0
scoreboard players set @a online 1

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide