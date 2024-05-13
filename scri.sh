#!/bin/bash

# Инициализация репозитория
git init

# Настройка пользователя nik
git config --local user.name "nik"
git config --local user.email "s367231@itmo.ru"

# Работа с первым коммитом
unzip -o -d . ../raw_data/commit0.zip
git add .
git commit -m "r0"

# Создание и работа на ветке branch2
git config --local user.name "nik2"
git config --local user.email "s367056@itmo.ru"
git checkout -b branch2
unzip -o -d . ../raw_data/commit1.zip
git add .
git commit -m "r1"

# Создание и работа на ветке branch3
git checkout -b branch3
unzip -o -d . ../raw_data/commit2.zip
git add .
git commit -m "r2"

# Возврат на master и добавление коммита
git config --local user.name "nik"
git config --local user.email "s367231@itmo.ru"
git checkout master
unzip -o -d . ../raw_data/commit3.zip
git add .
git commit -m "r3"

# Добавление дополнительных коммитов на ветке branch2
git config --local user.name "nik2"
git config --local user.email "s367056@itmo.ru"
git checkout branch2
unzip -o -d . ../raw_data/commit4.zip
git add .
git commit -m "r4"

unzip -o -d . ../raw_data/commit5.zip
git add .
git commit -m "r5"

# Возврат на master и добавление коммитов
git config --local user.name "nik"
git config --local user.email "s367231@itmo.ru"
git checkout master
unzip -o -d . ../raw_data/commit6.zip
git add .
git commit -m "r6"

# Добавление дополнительных коммитов на ветке branch2
git config --local user.name "nik2"
git config --local user.email "s367056@itmo.ru"
git checkout branch2
unzip -o -d . ../raw_data/commit7.zip
git add .
git commit -m "r7"

unzip -o -d . ../raw_data/commit8.zip
git add .
git commit -m "r8"

unzip -o -d . ../raw_data/commit9.zip
git add .
git commit -m "r9"

# Возврат на ветку branch3 и добавление коммитов
git checkout branch3
unzip -o -d . ../raw_data/commit10.zip
git add .
git commit -m "r10"

unzip -o -d . ../raw_data/commit11.zip
git add .
git commit -m "r11"

unzip -o -d . ../raw_data/commit12.zip
git add .
git commit -m "r12"

# Возврат на ветку branch2 и добавление последнего коммита
git checkout branch2
unzip -o -d . ../raw_data/commit13.zip
git add .
git commit -m "r13"
