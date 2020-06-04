#!/usr/bin/env python
from __future__ import print_function

import yaml
import os
import shutil
CONFIG="install.conf.yaml"

stream = open(CONFIG, "r")
conf = yaml.load(stream)

for section in conf:
    if 'link' in section:
        for target in section['link']:
            realpath = os.path.expanduser(target)
            print(realpath)
            if os.path.islink(realpath):
                print("Removing ", realpath)
                os.unlink(realpath)
            if os.path.exists(realpath) and os.path.isfile(realpath):
                os.remove(realpath)
                print("delete the file ")
            if os.path.exists(realpath) and os.path.isdir(realpath):
                # os.rmdir(realpath)
                shutil.rmtree(realpath)
                print("delete the dir")
