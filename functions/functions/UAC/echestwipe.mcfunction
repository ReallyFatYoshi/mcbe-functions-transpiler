#bridge-file-version: #3
execute as @s[tag=!staffstatus]  run function UAC/asset/echestwipe
execute as @s[tag=!staffstatus]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector": "@s"},{"text":"'s §bEnderchest was cleared by a operator"}]}

execute as @s[tag=staffstatus]  run tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC ► §d"},{"selector": "@s"},{"text":" §bis staff and can't be cleared"}]}