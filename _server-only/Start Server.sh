#!/bin/sh
cd "$(dirname "$(readlink -fn "$0")")"
java -Xmx4096M -Xms256M -jar forge-1.12.2-14.23.5.2860.jar nogui