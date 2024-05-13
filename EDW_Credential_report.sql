/*

		EDW_Credential_report.sql
		
		created:	2023-05-23	Andy Rupp
		updated:

*/

select  OBJECT_CATALOG
,       OBJECT_SCHEMA
,       OBJECT_NAME
,       OBJECT_TYPE
,       PRIVILEGE_TYPE
,       GRANTEE
,       GRANTOR
,       to_char(created,'YYYY-MM-DD')       DT_CREATED
--      select  *
from    INFORMATION_SCHEMA.OBJECT_PRIVILEGES
where	OBJECT_TYPE like '%PROC%'
order   by
        OBJECT_CATALOG
,       OBJECT_SCHEMA
,       OBJECT_NAME