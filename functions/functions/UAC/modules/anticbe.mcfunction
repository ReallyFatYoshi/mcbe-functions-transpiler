#execute @e[type=command_block_minecart] ~~~ execute @a[r=10,scores={acmtoggle=1}] ~~~ function UAC/asset/cbeitemwarn

# this'll fix lag bypasses trying to execute the command before it is killed
execute as @s[scores={acmtoggle=1}]  run execute @e[type=command_block_minecart] ~~~ scoreboard players set @a cbetime 30
execute @s[scores={amctoggle=1,cbetime=1..}] ~~~ gamerule commandblocksenabled false
scoreboard players remove @s[scores={amctoggle=1,cbetime=1..}] cbetime 1
scoreboard players set @s[scores={amctoggle=1,cbetime=1..2}] cbetime 0

execute as @s[tag=!staffstatus,scores={acmtoggle=1,has_gt=0},hasitem={item=beehive,item=bee_nest}]  run function UAC/asset/cbeitemwarn

execute as @s[scores={acmtoggle=1}]  run kill @e[type=command_block_minecart]
execute as @s[scores={acmtoggle=1}]  run kill @e[name="minecart"]
execute as @s[scores={acmtoggle=1}]  run kill @e[type=npc]
execute as @s[scores={acmtoggle=1}]  run kill @e[type=falling_block]
execute as @s[scores={acmtoggle=1}]  run kill @e[type=leash_knot]
execute as @s[scores={acmtoggle=1,has_gt=0},tag=!staffstatus]  run clear @s beehive
execute as @s[scores={acmtoggle=1,has_gt=0},tag=!staffstatus]  run clear @s bee_nest

#buckets
execute as @s[scores={acmtoggle=1,CBEBU=1,has_gt=0}]  run clear @s cod_bucket
execute as @s[scores={acmtoggle=1,CBEBU=1,has_gt=0}]  run clear @s pufferfish_bucket
execute as @s[scores={acmtoggle=1,CBEBU=1,has_gt=0}]  run clear @s salmon_bucket
execute as @s[scores={acmtoggle=1,CBEBU=1,has_gt=0}]  run clear @s tropical_fish_bucket
execute as @s[scores={acmtoggle=1,CBEBU=1,has_gt=0}]  run clear @s powder_snow_bucket
execute as @s[scores={acmtoggle=1,CBEBU=1,has_gt=0}]  run clear @s axolotl_bucket
execute as @s[scores={acmtoggle=1,CBEBU=1}]  run clear @s flower_pot
execute as @s[scores={acmtoggle=1,CBEBU=1}]  run kill @e[type=item,name="bucket of axolotl"]
execute as @s[scores={acmtoggle=1,CBEBU=1}]  run kill @e[type=item,name="bucket of pufferfish"]
execute as @s[scores={acmtoggle=1,CBEBU=1}]  run kill @e[type=item,name="bucket of tropical fish"]
execute as @s[scores={acmtoggle=1,CBEBU=1}]  run kill @e[type=item,name="bucket of salmon"]
execute as @s[scores={acmtoggle=1,CBEBU=1}]  run kill @e[type=item,name="powder snow bucket"]
execute as @s[scores={acmtoggle=1,CBEBU=1}]  run kill @e[type=item,name="bucket of cod"]
execute as @s[scores={acmtoggle=1,CBEBU=1}]  run kill @e[type=item,name="flower pot"]

#Remove placed Stuff
execute as @s[tag=!staffstatus,scores={acmtoggle=1,has_gt=0}]  at @s run fill ~8 ~5 ~8 ~-8 ~-5 ~-8 air 0 replace beehive
execute as @s[tag=!staffstatus,scores={acmtoggle=1,has_gt=0}]  at @s run fill ~8 ~5 ~8 ~-8 ~-5 ~-8 air 0 replace bee_nest
execute as @s[scores={acmtoggle=1}]  run kill @e[type=item,name="bee nest"]
execute as @s[scores={acmtoggle=1}]  run kill @e[type=item,name="beehive"]
execute as @s[scores={acmtoggle=1}]  run kill @e[type=item,name="tile.movingblock.name"]
execute as @s[scores={acmtoggle=1}]  run kill @e[type=item,name="tile.moving_block.name"]

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide