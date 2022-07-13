#Remove banned items
execute as @s[scores={ibmtoggle=1}]  run execute @s[scores={BNA=1}] ~~~ clear @s arrow 24
execute as @s[scores={ibmtoggle=1}]  run execute @s[scores={BNA=1}] ~~~ clear @s arrow 25
execute as @s[scores={ibmtoggle=1}]  run execute @s[scores={BNM=1}] ~~~ clear @s empty_map
execute as @s[scores={ibmtoggle=1}]  run execute @s[scores={BNM=1}] ~~~ clear @s filled_map
execute as @s[scores={ibmtoggle=1}]  run execute @s[scores={BNCB=1}] ~~~ clear @s crossbow
execute as @s[scores={ibmtoggle=1}]  run execute @s[scores={BNSB=1}] ~~~ clear @s shulker_box
execute as @s[scores={ibmtoggle=1}]  run execute @s[scores={BNSB=1}] ~~~ clear @s undyed_shulker_box
execute as @s[scores={ibmtoggle=1}]  run execute @s[scores={BNBQ=1}] ~~~ clear @s writable_book
execute as @s[scores={ibmtoggle=1}]  run execute @s[scores={BNTN=1}] ~~~ clear @s tnt
execute as @s[scores={ibmtoggle=1}]  run execute @s[scores={BNTN=1}] ~~~ kill @e[r=50,type=tnt]
execute as @s[scores={ibmtoggle=1}]  run execute @s[scores={BNTD=1}] ~~~ clear @s trident


#This file is called apon every 5 seconds from UAC/packages/autolagclear if the module is enabled

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide