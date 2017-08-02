create table VERTICO_DONORS (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USERNAME varchar(255),
    EMAIL varchar(30) not null,
    CREDITS decimal(19, 2),
    ACTIVE boolean,
    SECRET_KEY varchar(255),
    --
    primary key (ID)
);
