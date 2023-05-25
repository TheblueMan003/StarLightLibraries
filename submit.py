import os
import json
import shutil
from os import listdir
from os.path import isfile, join

def addOne(name2, version):
    name = name2.replace("\\", "/")
    pv = version.replace(".", "_")

    os.makedirs("published/"+name.lower(), exist_ok=True)
    shutil.copyfile("src/"+name+".sl", "published/"+name.lower()+"/"+pv+".sl")

    with open("published/index.json") as f:
        data = json.load(f)
    with open("published/index.json", "w") as f:
        if name.replace("/", ".").lower() not in data["libraries"]:
            data["libraries"][name.replace("/", ".").lower()] = [{"url": name.lower()+"/"+pv+".sl", "filename": name.lower()+".sl", "version": version}]
        else:
            # remove old version
            for i in range(len(data["libraries"][name.replace("/", ".").lower()])):
                if data["libraries"][name.replace("/", ".").lower()][i]["version"] == version:
                    data["libraries"][name.replace("/", ".").lower()].pop(i)
                    break
            data["libraries"][name.replace("/", ".").lower()].append({"url": name.lower()+"/"+pv+".sl", "filename": name.lower()+".sl", "version": version})
        
        json.dump(data, f)

if (__name__ == "__main__"):
    action = input("library to add: ")
    if (action == "*"):
        mypath = "src/"
        walk = os.walk(mypath)

        for parent, dirs, files in walk:
            for file in files:
                file = parent + "/"+file
                name = file.replace(".sl","").replace(mypath, "").replace("\\", "/")
                if name[0] == "/":
                    name = name[1:]
                print(name)
                addOne(name, "1.0.0")
    else:
        addOne(action, input("version"))