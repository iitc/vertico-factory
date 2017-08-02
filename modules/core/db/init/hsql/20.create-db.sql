-- begin VERTICO_INSTANCE
alter table VERTICO_INSTANCE add constraint FK_VERTICO_INSTANCE_DONOR foreign key (DONOR_ID) references VERTICO_DONORS(ID)^
create index IDX_VERTICO_INSTANCE_DONOR on VERTICO_INSTANCE (DONOR_ID)^
-- end VERTICO_INSTANCE
-- begin VERTICO_APPLICATIONS
alter table VERTICO_APPLICATIONS add constraint FK_VERTICO_APPLICATIONS_DEPLOY_INSTANCE foreign key (DEPLOY_INSTANCE_ID) references VERTICO_INSTANCE(ID)^
-- end VERTICO_APPLICATIONS
-- begin VERTICO_DONORS
create unique index IDX_VERTICO_DONORS_UNIQ_EMAIL on VERTICO_DONORS (EMAIL) ^
-- end VERTICO_DONORS
