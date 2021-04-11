#!/bin/bash
grep -n "$1" -R "/home/dog/Nutstore Files" --include=*.md -n -a --color=auto
