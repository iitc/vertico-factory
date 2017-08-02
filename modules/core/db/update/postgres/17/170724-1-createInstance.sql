create table VERTICO_INSTANCE (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NICKNAME varchar(255),
    OS text,
    PUBLIC_IP varchar(255),
    PRIVATE_IP varchar(255),
    RAM varchar(255),
    DISK_SPACE varchar(255),
    CPU varchar(255),
    STATUS varchar(50) not null,
    CREDITS decimal(19, 3),
    DONOR_ID uuid,
    INFO text,
    --
    primary key (ID)
);
