alter table VERTICO_APPLICATIONS add column INIT_SCRIPT text ^
update VERTICO_APPLICATIONS set INIT_SCRIPT = '' where INIT_SCRIPT is null ;
alter table VERTICO_APPLICATIONS alter column INIT_SCRIPT set not null ;
alter table VERTICO_APPLICATIONS add column STOP_SCRIPT text ^
update VERTICO_APPLICATIONS set STOP_SCRIPT = '' where STOP_SCRIPT is null ;
alter table VERTICO_APPLICATIONS alter column STOP_SCRIPT set not null ;
