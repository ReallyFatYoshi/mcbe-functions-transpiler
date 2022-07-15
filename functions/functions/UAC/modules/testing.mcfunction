#Test Features
execute as @s[scores={hastorch=0,testin=1}]  at @s run fill ~10 ~-2 ~10 ~-10 ~2 ~-10 air 0 replace light_block
execute as @s[scores={hastorch=1,testin=1,lagtimer=1}]  run scoreboard players set @s hastorch 0
execute as @s[scores={hastorch=1,testin=1,lagtimer=5}]  run scoreboard players set @s hastorch 0
execute as @s[scores={hastorch=1,testin=1,lagtimer=10}]  run scoreboard players set @s hastorch 0
execute as @s[scores={hastorch=1,testin=1,lagtimer=15}]  run scoreboard players set @s hastorch 0
execute as @s[scores={hastorch=1,testin=1,lagtimer=20}]  run scoreboard players set @s hastorch 0
execute as @s[scores={hastorch=1,testin=1,lagtimer=25}]  run scoreboard players set @s hastorch 0
execute as @s[scores={hastorch=1,testin=1,lagtimer=30}]  run scoreboard players set @s hastorch 0

scoreboard players operation @s testin = testindummy testin

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide