alter table VERTICO_DONORS add column NAME varchar(255) ;
alter table VERTICO_DONORS add column PASSWORD varchar(255) ;
alter table VERTICO_DONORS add column ACTIVE boolean ;
alter table VERTICO_DONORS add column SECRET_KEY varchar(255) ;
alter table VERTICO_DONORS drop column USERNAME cascade ;
alter table VERTICO_DONORS drop column PASSWORD_HASH cascade ;
alter table VERTICO_DONORS alter column EMAIL set data type varchar(30) ;
-- update VERTICO_DONORS set EMAIL = <default_value> where EMAIL is null ;
alter table VERTICO_DONORS alter column EMAIL set not null ;
