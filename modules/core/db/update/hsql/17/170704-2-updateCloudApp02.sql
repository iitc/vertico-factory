alter table VERTICO_CLOUD_APP drop column MACHINE_ID cascade ;
-- alter table VERTICO_CLOUD_APP add column MACHINE_ID varchar(36) ^
-- update VERTICO_CLOUD_APP set MACHINE_ID = <default_value> ;
-- alter table VERTICO_CLOUD_APP alter column MACHINE_ID set not null ;
alter table VERTICO_CLOUD_APP add column MACHINE_ID varchar(36) not null ;
