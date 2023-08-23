CREATE TABLE IF NOT EXISTS users
(
    id         int          not null AUTO_INCREMENT,
    first_name varchar(100) not null,
    last_name  varchar(100) not null,
    email      varchar(100) not null,
    role       varchar(10)  not null,
    usercode   varchar(255) not null,
    title      varchar(20),
    create_dts timestamp    not null default CURRENT_TIMESTAMP,
    update_dts timestamp null,
    primary key (id)
);


CREATE TABLE IF NOT EXISTS TEST(ID INT PRIMARY KEY, NAME VARCHAR(255));
