#!/usr/bin/env bash

##
# Run a command or start supervisord
#
if [ $# -gt 0 ];then
    # If we passed a command, run it
    exec "$@"
else
    # Otherwise start supervisord
    cd /app
    dotnet restore
    dotnet build
    dotnet test
fi