alter table VERTICO_APPLICATIONS add constraint FK_VERTICO_APPLICATIONS_DEPLOY_INSTANCE foreign key (DEPLOY_INSTANCE_ID) references VERTICO_INSTANCE(ID);
