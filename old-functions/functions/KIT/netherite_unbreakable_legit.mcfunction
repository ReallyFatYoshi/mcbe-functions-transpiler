structure load AdminUnbreakableNetherlegit ~~~ 0_degrees 
tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §¶§bspawned a Netherite Unbreakable Admin Kit"}]}
execute @s[tag=staffstatus] ~~~ function particle/explode
execute @s[tag=staffstatus] ~~~ playsound random.enderchestopen @s ~~~ 2 1 3