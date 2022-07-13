execute as @s[tag=staffstatus]  run scoreboard players set testindummy testin 1
execute as @s[tag=staffstatus]  run scoreboard players operation @s testin = testindummy testin
execute as @s[tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► The §2Developer Testing Features §bhas been used by §d"},{"selector":"@s"}]}
tellraw @a[tag=staffstatus,scores={has_xx=0}] {"rawtext":[{"text":"§¶§cUAC ► §6Experimental Features §7: §cNot Enabled §7|| §cThis module may not work!"}]}
#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide