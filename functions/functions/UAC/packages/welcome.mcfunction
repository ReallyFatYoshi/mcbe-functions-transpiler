scoreboard players add @a welcome 1
scoreboard objectives add welcome dummy welcome
execute @a[scores={welcome=110..111}] ~~~ scoreboard objectives add has_gt dummy
execute @a[scores={welcome=110..111}] ~~~ scoreboard players set @s has_gt 0
execute as @a[scores={welcome=120}]  run function UAC/asset/welcome_asset
execute as @a[scores={welcomed=1}]  run scoreboard players set @s welcome 0
#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide