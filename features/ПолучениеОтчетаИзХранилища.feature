# language: ru

Функционал: Получение отчета по версиям конфигурации из хранилища конфигурации
    Как разработчик
    Я хочу иметь возможность получать отчет по версиям конфигурации из хранилища без использования сторонних библиотек
    Чтобы мочь автоматизировать больше рутинных действий на OneScript

Контекст:
    Допустим Я создаю новый объект МенеджерХранилищаКонфигурации
    И Я создаю временный каталог и сохраняю его в контекст
    И Я копирую тестовое хранилище во временный каталог
    И Я сохраняю значение временного каталога в переменной "КаталогХранилищаКонфигурации"

Сценарий: Получение отчета по версиям из хранилища
    Допустим Я устанавливаю каталог хранилища во временный каталог
    И Я устанавливаю параметры авторизации пользователя "Администратор" и пароль ""
    Когда Я получаю отчет из хранилища
    Тогда Файл отчета существует

Сценарий: Получение отчета по версиям из хранилища начиная с 2 версии
    Допустим Я устанавливаю каталог хранилища во временный каталог
    И Я устанавливаю параметры авторизации пользователя "Администратор" и пароль ""
    Когда Я получаю отчет из хранилища начиная с версии "2"
    Тогда Файл отчета существует

Сценарий: Получение отчета по версиям из хранилища начиная с 1 по 2 версию
    Допустим Я устанавливаю каталог хранилища во временный каталог
    И Я устанавливаю параметры авторизации пользователя "Администратор" и пароль ""
    Когда Я получаю отчет из хранилища начиная с "1" по "2" версию
    Тогда Файл отчета существует


