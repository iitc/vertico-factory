create table VERTICO_INSTANCE (
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
    OS longvarchar,
    PUBLIC_IP varchar(255),
    PRIVATE_IP varchar(255),
    RAM varchar(255),
    DISK_SPACE varchar(255),
    STATUS varchar(50) not null,
    CREDITS decimal(19, 3),
    --
    primary key (ID)
);
