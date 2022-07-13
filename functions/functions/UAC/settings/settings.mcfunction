################ UNITY ANTI-CHEAT SETTINGS ################
#
# To Enable a setting, take out the { X } before the function command, and it will always be running!
# To Disable a setting, put a { X } before the function command.
#
#####################################################################################################
#
#=Unban Timer=
execute as @s[tag=staffstatus,scores={unban=1}]  run function UAC/modules/unbantimer
#
# =AntiCbe=
# Protection against the command block exploit
# Enabled by default
execute as @s[scores={acmtoggle=1}]  run function UAC/modules/anticbe
#
# =AntiFly=
# Protection against fly hacks
# Enabled by default
execute as @s[scores={afmtoggle=1}]  run function UAC/modules/antifly
#
#
# =No Unobtainable Items=
# Clears players of Unobtainable items
execute as @s[scores={uoimtoggle=1}]  run function UAC/modules/unobtainableitems
#
# =AUTOMATED CLEAR LAG=
# This will automatically clear dropped items and hostile entities every 6 minutes
# Enabled by default
function UAC/modules/lagtimer
#
# =Message Display=
# This displays a custom message above all players hotbar. By default this says "32k are banned. No enchants above 10"
# Enabled by default
#function UAC/modules/hotbarmessage
#
# =Mining Detection=
execute as @s[scores={mdmtoggle=1}]  run function UAC/modules/mining_detection
#
# =Testing Features=
# This displays the rules in chat every 10 minues
# Disable by default, people can see rules in the UAC UI from their inventory
execute as @s[scores={testin=1}]  run function UAC/modules/testing
#
# =ANTI FROSTWALKER=
# This will disable people from using frostwalker by autoreplaceing their feet slot with netherite boots
# Enabled by default
execute as @s[scores={nfmtoggle=1}]  run function UAC/modules/nofrostwalker
#
#
# =Staffstatus=
# DO NOT DISABLE THIS, THIS IS ESSENTIAL FOR STAFF BYPASSES TO WORK
execute as @s[scores={ssmtoggle=1}]  run function UAC/modules/staffstatus
#
# =Prevent OP abuse =
# Can't do damange when in creative mode
execute as @s[tag=staffstatus,scores={opamtoggle=1}]  run function UAC/modules/opabuse
#
# =No Echests=
# Disables echests for nonstaff
execute as @s[tag=!staffstatus,scores={nemtoggle=1}]  run function UAC/modules/noechest
#
# =Anit Reach=
# Experimental, prevents players from hitting eachother from more than 5 blocks away
execute as @s[scores={armtoggle=1}]  run function UAC/modules/antireach
#


execute as @s[tag=staffstatus,scores={opamtoggle=0}]  run replaceitem entity @s[scores={totemaut=329},tag=totemaut] slot.weapon.offhand 0 totem_of_undying 1 0 {"minecraft:keep_on_death":{}}

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide