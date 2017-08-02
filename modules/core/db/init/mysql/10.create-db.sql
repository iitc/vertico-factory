-- begin VERTICO_INSTANCE
create table VERTICO_INSTANCE (
    ID varchar(32),
    VERSION integer not null,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    --
    NICKNAME varchar(255),
    OS longtext,
    PUBLIC_IP varchar(255),
    PRIVATE_IP varchar(255),
    RAM varchar(255),
    DISK_SPACE varchar(255),
    CPU varchar(255),
    STATUS varchar(50) not null,
    CREDITS decimal(19, 3),
    DONOR_ID varchar(32),
    INFO longtext,
    --
    primary key (ID)
)^
-- end VERTICO_INSTANCE
-- begin VERTICO_DONORS
create table VERTICO_DONORS (
    ID varchar(32),
    VERSION integer not null,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    --
    USERNAME varchar(255),
    EMAIL varchar(30) not null,
    CREDITS decimal(19, 2),
    ACTIVE boolean,
    SECRET_KEY varchar(255),
    --
    primary key (ID)
)^
-- end VERTICO_DONORS
-- begin VERTICO_APPLICATIONS
create table VERTICO_APPLICATIONS (
    ID varchar(32),
    VERSION integer not null,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    --
    APP_NAME varchar(255),
    DEPLOY_INSTANCE_ID varchar(32),
    IMAGE_LOCATION varchar(255),
    STATUS varchar(50),
    --
    primary key (ID)
)^
-- end VERTICO_APPLICATIONS
