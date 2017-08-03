alter table VERTICO_APPLICATIONS add column APP_TYPE varchar(50) ^
update VERTICO_APPLICATIONS set APP_TYPE = 'container' where APP_TYPE is null ;
alter table VERTICO_APPLICATIONS alter column APP_TYPE set not null ;
alter table VERTICO_APPLICATIONS add column INIT_SCRIPT longvarchar ;
alter table VERTICO_APPLICATIONS add column STOP_SCRIPT longvarchar ;
alter table VERTICO_APPLICATIONS add column APPLOG longvarchar ;
update VERTICO_APPLICATIONS set IMAGE_LOCATION = '' where IMAGE_LOCATION is null ;
alter table VERTICO_APPLICATIONS alter column IMAGE_LOCATION set not null ;
update VERTICO_APPLICATIONS set STATUS = 'ACTIVE' where STATUS is null ;
alter table VERTICO_APPLICATIONS alter column STATUS set not null ;
