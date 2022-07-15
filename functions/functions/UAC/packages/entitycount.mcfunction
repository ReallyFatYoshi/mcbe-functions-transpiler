scoreboard players reset entitydummy entitycount
scoreboard players reset @a entitycount
execute as @e[type=item]  run scoreboard players add entitydummy entitycount 1
execute as @e[family=monster]  run scoreboard players add entitydummy entitycount 1
execute as @r[tag=!nullclear,scores={ltmtoggle=1}]  run scoreboard players operation @s entitycount = entitydummy entitycount
execute @r[tag=!nullclear,scores={ltmtoggle=1,entitycount=130..}] ~~~ scoreboard players set @s[tag=!entityclear] entityclear 400
execute @r[tag=!nullclear,scores={entitycount=130..}] ~~~ tag @s[scores={ltmtoggle=1}] add entityclear


#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide