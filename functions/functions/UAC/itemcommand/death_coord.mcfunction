function UAC/asset/deathcoords_asset
kill @e[type=item,name=lastdeath]

#This hides this from the in-game function command directory
execute as @f  run hide
tag @f[tag=""] add hide