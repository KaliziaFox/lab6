# lab03
## Калугина Елизавета ИУ8-23. Лабораторная работа 03
### Part 1
Создаю репозиторий на GitHub с названием lab03
Инициализирую переменные:
```
export GITHUB_USERNAME=jezzixxx
export GITHUB_EMAIL=pkapav02@gmail.com
export GITHUB_TOKEN=<сгенирированный_токен>
```

Выбираю режим редактирования nano:
```
alias edit=nano
```

Записываю в файл ~/.config/hub (EOF — маркер окончания записи):
```
cat > ~/.config/hub <<EOF
github.com:
- user: ${GITHUB_USERNAME}
  oauth_token: ${GITHUB_TOKEN}
  protocol: https
EOF
```

Записываю глобальные настройки (протокол, имя и почта пользователя):
```
git config --global hub.protocol https
git config --global user.name ${GITHUB_USERNAME}
git config --global user.email ${GITHUB_EMAIL}
```

Создаю папку lab03 внутри папки projects и переходим в неё:
```
mkdir lab03
cd lab03
```

Создаю пустой репозиторий:
```
git init
```

Добавляю удалённый репозиторий:
```
git remote add origin https://github.com/${GITHUB_USERNAME}/lab03.git
```

Установка cmake из официальных репозиториев:
```
sudo apt-get install cmake
```

Создаю директорию "formatter_lib" и переходим в неё:

mkdir formatter_lib
cd formatter_lib
```

Загружаю файлы "formatter.h" и "formatter.cpp" из сети (ссылка типа raw при переходе в файл в репозитории. Необходима для корректного формата файла):
```
wget https://raw.githubusercontent.com/tp-labs/lab03/master/formatter_lib/formatter.h
wget https://raw.githubusercontent.com/tp-labs/lab03/master/formatter_lib/formatter.cpp
```

Создаю и наполняем файл CMakeLists.txt:
```
nano CMakeLists.txt
```
В открывшемся окне:

```
//Создание CMakeLists.txt для сборки библиотеки formatter:
cmake_minimum_required(VERSION 3.10) 
project(formatter)

//Установка стандарта языка, делаем его обязательным:
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

//Инициализируем исходники библиотеки (отдельно заголовки, отдельно cpp файлы):
set(SOURCES ~/projects/lab03/formatter_lib/formatter.cpp)
set(HEADERS ~/projects/lab03/formatter_lib/formatter.h)

//Сборка статической библиотеки "formatter":
add_library(formatter STATIC ${SOURCES} ${HEADERS})
Добавим упорядоченное дерево в путь поиска для включенных файлов:
target_include_directories(formatter PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
```
Проверим корректность заполнения CMakeLists.txt и найдём полный путь до файла:
cmake -H. -B_build

### Part 2
Создаём директорию "formatter_ex_lib" и переходим в неё:

```
mkdir formatter_ex_lib
cd formatter_ex_lib
```

Загружаем файлы "formatter_ex.h" и "formatter_ex.cpp" из сети (ссылка типа raw при переходе в файл в репозитории. Необходима для корректного формата файла):
```
wget https://raw.githubusercontent.com/tp-labs/lab03/master/formatter_ex_lib/formatter_ex.cpp
wget https://raw.githubusercontent.com/tp-labs/lab03/master/formatter_ex_lib/formatter_ex.h
```

Создаём и заполняем файл CMakeLists.txt:
```
nano CMakeLists.txt
```
В открывшемся окне:

```
//Создание CMakeLists.txt для сборки библиотеки formatter_ex:
cmake_minimum_required(VERSION 3.10) 
project(formatter_ex)

//Установка стандарта языка, делаем его обязательным:
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

//Инициализируем исходники библиотеки (отдельно заголовки, отдельно cpp файлы):
set(SOURCES ~/projects/lab03/formatter_ex_lib/formatter_ex.cpp)
set(HEADERS ~/projects/lab03/formatter_ex_lib/formatter_ex.h)

//Сборка статической библиотеки "formatter_ex":
add_library(formatter_ex STATIC ${SOURCES} ${HEADERS})

//Добавим упорядоченное дерево в путь поиска для включенных файлов:
target_include_directories(formatter_ex PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

//Связываем с библиотекой formatter:
target_link_libraries(formatter_ex formatter)
```

Проверим корректность заполнения CMakeLists.txt и найдём полный путь до файла:

```
cmake -H. -B_build
```

### Part 3
Аналогично для hello_world_application, solver_lib и проекта solver_application:

Собираем проект:

```
cmake -H. -B_build
cmake --build _build
```
Добавляем файлы и директории, создаём коммит, пушим:

```
git add
git commit -m"done work"
git push origin master
```
