#!/usr/bin/env python

# Author: Knight
# Github: https://github.com/ReallyFatYoshi
# LICENCE: MIT
# Copyright 2020(c)

import os
import shutil
import re
import progressbar
from time import sleep
from os import path 

print('\n#Version: 0.1.0\n# Author: Knight\n# Github: https://github.com/ReallyFatYoshi\n# LICENCE: MIT\n# Copyright 2020(c)\n')
base = input('Behavior pack directory: ')
dir = path.join(base,'functions')

if not path.isdir(dir):
    print('Invalid directory.')
    exit
else:

    foundDir = True
    dirs = list()
    newDirs = list()
    newDirs.append(dir)

    while foundDir:
        newDirslist = list()
        for a in newDirs:           
            # print(a)
            files = os.listdir(a)
            for b in files:
                if path.isdir(path.join(a,b)):
                    newDirslist.append(path.join(a,b))
                    continue
                dirs.append(path.join(a,b))
        
        newDirs = newDirslist
        if len(newDirslist) == 0:
            foundDir = False

#Create Backup
if (path.isdir(path.join(base,'old-functions'))):
    input('"old-functions" folder already exist.\nPress enter to continue...\nWARNING continuing will replace the "old-functions" folder with a new one.')
    shutil.rmtree(path.join(base,'old-functions'))
shutil.copytree(dir, path.join(base,'old-functions'))

#Transpile Function
def transpile(file):
    
    f = open(file,'r')
    strd = ""
    for line in f.readlines():
        newStr = ""
        if re.search('^execute .+ ~ ~ ~',line):
            regex1 = r"(?<=execute)( )+(\d|\w|\_|\"|\@)+"
            regex2 = r"execute (\d|\w|\_|\"|\@)+ (\~( +)?){3}( +)?(summon|tp|teleport|setblock|fill)"
            regex3 = r"execute (\d|\w|\_|\"|\@)+ (\~( +)?){3}( +)"

            line = line.strip()
            selector = re.search(regex1,line)
            location = re.search(regex2,line)
            cmd = re.search(regex3,line)
            
            cmd = line.replace(cmd[0].strip(),"").strip()

            newStr = "execute as"+selector[0]
            if location:
                newStr+=" at @s run "+cmd
            else:
                newStr+=" run "+cmd
        else:
            newStr = line
        strd += "\n"+(newStr).strip()

    f.close()
    f = open(file,'w')
    f.write(strd.strip())
    f.close()

bar = progressbar.ProgressBar(max_value=len(dirs))

for file in dirs:  
    num = int(dirs.index(file))+1
    bar.update(num)
    sleep(0.02)
    transpile(file)

# Author: Knight
# Github: https://github.com/ReallyFatYoshi
# LICENCE: MIT
# Copyright 2020(c)
