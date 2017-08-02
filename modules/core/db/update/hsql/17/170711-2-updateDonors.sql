alter table VERTICO_DONORS add column PASSWORD_HASH varchar(255) ;
alter table VERTICO_DONORS add column CREDITS decimal(19, 2) ;
alter table VERTICO_DONORS drop column PASSWORD cascade ;
