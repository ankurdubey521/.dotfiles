#!/usr/bin/python3

POLL_INTERVAL_SEC = 1

import subprocess
import logging
import time
import json

def get_monitors() -> str:
    return subprocess.check_output('xrandr | grep " connected"', shell=True, text=True)

def restart_i3():
    logging.info(f"Restarting i3...{subprocess.check_output('i3-msg restart', shell=True, text=True)}") 

logging.basicConfig(level=logging.INFO)
logging.info("Polling xrandr...")
monitors = get_monitors()

while True:
    try:
        current_monitors = get_monitors()
        if current_monitors != monitors:
            logging.info("Change in monitor configuration detected")
            restart_i3()
        monitors = current_monitors
    except:
        logging.exception("Error occured")
    time.sleep(POLL_INTERVAL_SEC)



