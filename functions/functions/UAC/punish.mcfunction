execute as @s[tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §¶§bis staff and cannot be punished"}]}
execute as @s[tag=!staffstatus]  run function UAC/asset/punish_asset
execute as @s[tag=!staffstatus]  run function particle/explode
execute as @s[tag=!staffstatus]  run playsound mob.wither.break_block @s ~~~ 3 1 4