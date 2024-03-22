-- Создание таблицы Users
CREATE TABLE Users (
    UserID serial PRIMARY KEY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    Email VARCHAR(100),
    CreatedAt TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Создание таблицы People
CREATE TABLE People (
    PersonID serial PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    CreatedAt TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Создание системной таблицы UserPeople для связей между пользователями и людьми
CREATE TABLE UserPeople (
    UserID INT,
    PersonID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (PersonID) REFERENCES People(PersonID),
    PRIMARY KEY (UserID, PersonID)
);