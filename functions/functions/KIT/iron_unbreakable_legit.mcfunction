structure load AdminUnbreakableironlegit ~~~ 0_degrees
tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §¶§bspawned a Iron Unbreakable Admin Kit"}]}

execute as @s[tag=staffstatus]  run function particle/explode
execute as @s[tag=staffstatus]  run playsound random.enderchestopen @s ~~~ 2 1 3