execute as @s[scores={killstreak=10}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §bjust hit a killstreak of§7: "},{"score":{"name":"@s","objective":"killstreak"}}]}
execute as @s[scores={killstreak=20}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §bjust hit a killstreak of§7: "},{"score":{"name":"@s","objective":"killstreak"}}]}
execute as @s[scores={killstreak=30}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §bjust hit a killstreak of§7: "},{"score":{"name":"@s","objective":"killstreak"}}]}
execute as @s[scores={killstreak=40}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §bjust hit a killstreak of§7: "},{"score":{"name":"@s","objective":"killstreak"}}]}
execute as @s[scores={killstreak=50}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §bjust hit a killstreak of§7: "},{"score":{"name":"@s","objective":"killstreak"}}]}
execute as @s[scores={killstreak=60}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §bjust hit a killstreak of§7: "},{"score":{"name":"@s","objective":"killstreak"}}]}
execute as @s[scores={killstreak=70}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §bjust hit a killstreak of§7: "},{"score":{"name":"@s","objective":"killstreak"}}]}
execute as @s[scores={killstreak=80}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §bjust hit a killstreak of§7: "},{"score":{"name":"@s","objective":"killstreak"}}]}
execute as @s[scores={killstreak=90}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §bjust hit a killstreak of§7: "},{"score":{"name":"@s","objective":"killstreak"}}]}
execute as @s[scores={killstreak=100}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §bjust hit a killstreak of§7: "},{"score":{"name":"@s","objective":"killstreak"}}]}
execute @s[scores={killstreak=100..999}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§cUAC §b► §d"},{"selector":"@s"},{"text":" §bjust hit a killstreak of§7: "},{"score":{"name":"@s","objective":"killstreak"}}]}

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide