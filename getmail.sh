#!/usr/bin/env bash

# fetch all emails from accounts in ~/.fetchmailrc
echo -e "\e[00;33m== fetching emails ==\e[00m"
fetchmail

# create new index of all emails
echo -e "\e[00;33m== indexing emails (notmuch) ==\e[00m"
notmuch new 2>/dev/null
