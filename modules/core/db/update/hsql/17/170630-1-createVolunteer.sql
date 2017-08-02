create table VERTICO_VOLUNTEER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    VM_NAME varchar(255),
    VM_OPERATING_SYSTEM varchar(25),
    VM_CPU varchar(255),
    VM_DISK_USAGE varchar(255),
    VM_STATUS varchar(50),
    VM_USAGE double precision,
    VM_TRUST_FACTOR double precision,
    VM_HEART_BEAT timestamp,
    VM_ERROR_LOG longvarchar,
    --
    primary key (ID)
);
