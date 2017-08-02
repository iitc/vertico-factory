create table VERTICO_DEMANDS (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    RAM integer,
    CPU varchar(255),
    DISK_SPACE varchar(255),
    --
    primary key (ID)
);
