CREATE DATABASE IF NOT EXISTS demo;

CREATE USER 'admin'@'%' IDENTIFIED BY 'admin1234';
GRANT ALL ON demo.* TO 'admin'@'%';

create table if not exists users
(
    id         int(8) AUTO_INCREMENT,
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
