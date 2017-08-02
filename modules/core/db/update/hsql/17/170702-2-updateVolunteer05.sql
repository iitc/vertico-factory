alter table VERTICO_VOLUNTEER add column VM_USER_NAME longvarchar ;
alter table VERTICO_VOLUNTEER add column VM_OTHER_INFO varchar(255) ;
alter table VERTICO_VOLUNTEER add column VM_EARNINGS varchar(255) ;
alter table VERTICO_VOLUNTEER drop column VM_USERNAME cascade ;
alter table VERTICO_VOLUNTEER drop column VM_ERROR_LOG cascade ;
alter table VERTICO_VOLUNTEER drop column VM_V_BOX_VERSION cascade ;
