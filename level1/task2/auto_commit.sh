#!/bin/bash

# цвета
GREEN="\033[0;32m"
RED="\033[0;31m"
BLUE="\033[0;34m"
NC="\033[0m" # No Color

if [ -z "$1" ]; then
    echo -e "${RED}Ошибка: не передано сообщение коммита${NC}"
    echo -e "${BLUE}Пример: ./auto_commit.sh \"added new feature\"${NC}"
    exit 1
fi

echo -e "${BLUE}Добавляем изменения...${NC}"
git add -A

DATE=$(date "+%Y-%m-%d %H:%M:%S")

echo -e "${BLUE}Создаем коммит...${NC}"
git commit -m "$1 | $DATE"

if [ $? -ne 0 ]; then
    echo -e "${RED}Ошибка при создании коммита ${NC}"
    exit 1
fi

echo -e "${GREEN}Последний коммит:${NC}"
git log -1 --oneline --decorate
