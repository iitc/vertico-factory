create table VERTICO_APPLICATIONS (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    APP_NAME varchar(255),
    DEPLOY_INSTANCE_ID uuid,
    IMAGE_LOCATION varchar(255),
    STATUS varchar(50),
    --
    primary key (ID)
);
