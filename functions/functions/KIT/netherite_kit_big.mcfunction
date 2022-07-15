structure load AdminNether ~~~ 0_degrees
fill ~~~ ~~~ air
tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §¶§bspawned a Netherite Admin Kit"}]}
execute as @s[tag=staffstatus]  run function particle/explode
execute as @s[tag=staffstatus]  run playsound random.enderchestopen @s ~~~ 2 1 3