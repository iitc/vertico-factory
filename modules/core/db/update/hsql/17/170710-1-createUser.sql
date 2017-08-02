create table VERTICO_USER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USERNAME varchar(14) not null,
    EMAIL varchar(255),
    PASSWORD varchar(255),
    CREDITS varchar(255),
    --
    primary key (ID)
);
