tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §¶§cFlagged §d"},{"selector":"@s"},{"text":"§¶§c for illegal items"}]}
playsound note.bass @a ~ ~ ~

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide