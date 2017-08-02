alter table VERTICO_CLOUD_APP add constraint FK_VERTICO_CLOUD_APP_MACHINE foreign key (MACHINE_ID) references SEC_USER(ID);
