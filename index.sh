#!/bin/bash

# URL to fetch the latest update message 
UPDATE_URL="https://jakobkjellberg.xyz/update.txt"

echo -e "\033[31m          _       _         _     _  ___      _ _ _                     ___ ___  \033[0m
\033[32m          | |     | |       | |   | |/ (_)    | | | |                   / _ \\__ \\ \033[0m
\033[33m          | | __ _| | _____ | |__ | ' / _  ___| | | |__   ___ _ __ __ _| | | | ) |\033[0m
\033[34m      _   | |/ _\` | |/ / _ \\| '_ \\|  < | |/ _ \\ | | '_ \\ / _ \\ '__/ _\` | | | |/ / \033[0m
\033[35m     | |__| | (_| |   < (_) | |_) | . \\| |  __/ | | |_) |  __/ | | (_| | |_| / /_ \033[0m
\033[36m      \\____/ \\__,_|_|\\_\\___/|_.__/|_|\\_\\ |\\___|_|_|_.__/ \\___|_|  \\__, |\\___/____|\033[0m
\033[37m                                      _/ |                         __/ |          \033[0m
\033[31m                                     |__/                         |___/           \033[0m"

# Fetch and display the latest update message
echo -e "\nChecking for updates..."
UPDATE_MESSAGE=$(curl -s "$UPDATE_URL")

if [ -z "$UPDATE_MESSAGE" ]; then
    echo -e "\033[33mNo updates available.\033[0m"
else
    echo -e "\033[32mUpdate:\033[0m $UPDATE_MESSAGE"
fi
