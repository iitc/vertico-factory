alter table VERTICO_DONORS add column USERNAME varchar(255) ;
alter table VERTICO_DONORS drop column NAME cascade ;
