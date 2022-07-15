structure load AdminUnbreakableDiamondLegit ~~~ 0_degrees
tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §¶§bspawned a Diamond Unbreakable Admin Kit"}]}

execute as @s[tag=staffstatus]  run function particle/explode
execute as @s[tag=staffstatus]  run playsound random.enderchestopen @s ~~~ 2 1 3