#Anti-FrostWalker Messages
execute as @s[scores={nfmtoggle=1,feeten=1}]  run tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Anti Frostwalker §bremoved enchanted boots from §d"},{"selector":"@s"}]}
execute as @s[scores={nfmtoggle=1,has_xx=0}]  run replaceitem entity @s slot.armor.feet 0 netherite_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
execute as @s[scores={nfmtoggle=1,feeten=1,nethboots=1}]  run replaceitem entity @s slot.armor.feet 0 netherite_boots 1 0
execute as @s[scores={nfmtoggle=1,feeten=1,diaboots=1}]  run replaceitem entity @s slot.armor.feet 0 diamond_boots 1 0
execute as @s[scores={nfmtoggle=1,feeten=1,ironboots=1}]  run replaceitem entity @s slot.armor.feet 0 iron_boots 1 0
execute as @s[scores={nfmtoggle=1,feeten=1,goldboots=1}]  run replaceitem entity @s slot.armor.feet 0 golden_boots 1 0
execute as @s[scores={nfmtoggle=1,feeten=1,chainboots=1}]  run replaceitem entity @s slot.armor.feet 0 chainmail_boots 1 0
execute as @s[scores={nfmtoggle=1,feeten=1,leathboots=1}]  run replaceitem entity @s slot.armor.feet 0 leather_boots 1 0
execute as @s[scores={nfmtoggle=1}]  run execute @s[scores={feeten=1}] ~~~ scoreboard players set @s feeten 0


#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide