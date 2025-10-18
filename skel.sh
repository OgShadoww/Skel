#!/bin/zsh

project=$1

if [ -z "$proect" ]; then
  echo "Please write name of the project"
  exit 1
fi

mkdir -p $project


cd $project || exit 1


touch main.c README.md .gitignore Makefile

#Writing Makefile
echo "CC = gcc" >> Makefile
echo "TARGET = main" >> Makefile
echo "SRC = main.c" >> Makefile
ehco "" >> Makefile
echo "$(TARGET): Makefile $(SRC)" >> Makefile
echo "$(CC) $(SRC) -o $(TARGET)" >> Makefile

#Writing .gitignore
echo "main" >> .gitignore


exit 0


