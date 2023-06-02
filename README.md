В этом проекте реализованы такие методы как:

1.Добавление нового пользователя (регистрация);
2.Авторизация в системе;
3.Администратор может удалит пользователя или изменить его данные;
4.Пользователь может просмотреть данные всех существующих пользователей (пароль скрыт);

спользовал БД - PostgreSQL. 
На основе работы с БД использовал EntityFramework scafold.

подключение scafold:
1.С помощью NuGet нужно установить следующие пакеты: Microsoft.EntityFrameworkCore.Tools Microsoft.EntityFrameworkCore.Design Microsoft.EntityFrameworkCore.SqlServer Npgsql.EntityFrameworkCore.PostgreSQL
2.Открываем терминал и вводим команду dotnet tool install --global dotnet-ef --version 6.*
3.В терминале переходим в папку с проектом и вводим команду dotnet ef dbcontext scaffold "Host={хост бд};Port=5432;Database={имя бд};Username={юзернейм бд};Password={пароль от бд}" Npgsql.EntityFrameworkCore.PostgreSQL -o Models
