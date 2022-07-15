scoreboard players set @s hastorch 1

execute as @s[scores={hastorch=1}]  at @s run fill ~1 ~-1 ~3 ~7 ~4 ~-3 air 0 replace light_block
execute as @s[scores={hastorch=1}]  at @s run fill ~-1 ~-1 ~3 ~-7 ~4 ~-3 air 0 replace light_block
execute as @s[scores={hastorch=1}]  at @s run fill ~3 ~-1 ~-7 ~-3 ~4 ~-1 air 0 replace light_block
execute as @s[scores={hastorch=1}]  at @s run fill ~3 ~-1 ~7 ~-3 ~4 ~1 air 0 replace light_block
execute as @s[scores={hastorch=1}]  run detect ~ ~1 ~ air 0 fill ~ ~1 ~ ~ ~1 ~ light_block 10
#execute @s[scores={torchtimer=20..25,hastorch=1}] ~~~ scoreboard players reset @s torchtimer
#execute @s[scores={hastorch=1}] ~~~ scoreboard players set @s hastorch 0

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide