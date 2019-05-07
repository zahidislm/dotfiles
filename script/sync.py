#!/usr/bin/env python3

import os
import pyinotify

dirname = "/home/zahidislm/Documents/priv" # Change your dirname to whatever
remote_id = "gdrive"
target_dir = "Encrypted"

watch_manager = pyinotify.WatchManager()
mask = pyinotify.IN_DELETE | pyinotify.IN_MODIFY | pyinotify.IN_CREATE
watch_manager.add_watch(dirname, rec=True, mask=mask)

def handler(ev):
    os.system("rclone sync {} {}:{}".format(dirname, remote_id, target_dir))
    print("Updated!")

notifier = pyinotify.Notifier(watch_manager, handler)
notifier.loop()