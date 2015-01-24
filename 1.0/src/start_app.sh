#!/bin/bash

PID_APP_FILE=/opt/play-app/target/universal/stage/RUNNING_PID

#TODO eliminar el archivo solo si no hay un proceso corriendo en ese pid
[ -f "$PID_APP_FILE" ] && rm -f "$PID_APP_FILE"
cd /opt/play-app/ &&
/opt/play-app/activator start
