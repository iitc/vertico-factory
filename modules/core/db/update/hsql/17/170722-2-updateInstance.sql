alter table VERTICO_INSTANCE add column NICKNAME varchar(255) ;
alter table VERTICO_INSTANCE drop column NAME cascade ;
