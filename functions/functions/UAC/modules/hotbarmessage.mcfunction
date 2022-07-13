#survival (with score)
execute as @s[scores={hmmtoggle=1,fzplr=0,hometp=3,suicide=0},m=s]  run titleraw @s actionbar {"rawtext":[{"text":"§¶§bUnity AntiCheat §7[§2v2.5§7] Public §b - Made by §dNightwalkerLots"},{"text":"\n §¶§bKills §7:"},{"score":{"name":"@s","objective":"kills"}},{"text":" §bDeaths §7:"},{"score":{"name":"@s","objective":"deaths"}},{"text":" §bCurrent Killstreak §7:"},{"score":{"name":"@s","objective":"killstreak"}}]}

#survival (without score)
execute as @s[scores={hmmtoggle=2,fzplr=0,hometp=3,suicide=0},m=s]  run titleraw @s actionbar {"rawtext":[{"text":"§¶§bUnity AntiCheat §7[§2v2.5§7] Public §b - Made by §dNightwalkerLots"}]}

#personal - stats
execute as @s[scores={hmmtoggle=0,fzplr=0,hometp=1337,suicide=0}]  run titleraw @s actionbar {"rawtext":[{"text":"§¶§bUnity AntiCheat §7[§2v2.5§7] Public §b - Made by §dNightwalkerLots"},{"text":"\n §¶§bKills §7:"},{"score":{"name":"@s","objective":"kills"}},{"text":" §bDeaths §7:"},{"score":{"name":"@s","objective":"deaths"}},{"text":" §bCurrent Killstreak §7:"},{"score":{"name":"@s","objective":"killstreak"}}]}

#personal - entitycount
execute as @a[scores={hmmtoggle=0,fzplr=0,hometp=420,suicide=0}]  run titleraw @s actionbar {"rawtext":[{"text":"§¶§bUnity AntiCheat §7[§2v2.5§7] Public §b - Made by §dNightwalkerLots\n §bEntity Count §7: "},{"score":{"name":"entitydummy","objective":"entitycount"}},{"text":" §bPlayer Count §7: "},{"score":{"name":"playerdummy","objective":"playercount"}}]}

#Frozen Player
execute as @s[scores={fzplr=1}]  run titleraw @s actionbar {"rawtext":[{"text":"§¶§bYOU HAVE BEEN §cFROZEN §bBY AN OPERATOR \n §¶§bLEAVING MAY RESULT IN A BAN"}]}

#Creative messages
execute as @s[tag=staffstatus,m=c]  run function UAC/asset/hotbar_creative

#unban timer progress bar
execute @s[scores={hmmtoggle=1,hometp=5,unbantimer=1..}] ~~~ function UAC/asset/hotbar_unbantimer

#suicide progress bar
execute @s[scores={suicide=1..}] ~~~ function UAC/asset/hotbar_suicidetimer


#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide