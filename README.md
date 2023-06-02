В этом проекте реализованы такие методы как:

Добавление нового пользователя (регистрация);
Авторизация в системе;
Администратор может удалит пользователя или изменить его данные;
Пользователь может просмотреть данные всех существующих пользователей (пароль скрыт);
Использовал БД - PostgreSQL. На основе работы с БД использовал EntityFramework scafold.

подключение scafold:

С помощью NuGet нужно установить следующие пакеты: Microsoft.EntityFrameworkCore.Tools Microsoft.EntityFrameworkCore.Design Microsoft.EntityFrameworkCore.SqlServer Npgsql.EntityFrameworkCore.PostgreSQL

Открываем терминал и вводим команду dotnet tool install --global dotnet-ef --version 6.*

В терминале переходим в папку с проектом и вводим команду dotnet ef dbcontext scaffold "Host={хост бд};Port=5432;Database={имя бд};Username={юзернейм бд};Password={пароль от бд}" Npgsql.EntityFrameworkCore.PostgreSQL -o Models
