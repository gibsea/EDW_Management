/*

		EDW_Credential_assignments.sql
		
		created:	2023-05-23	Andy Rupp
		updated:

*/

select  OP.OBJECT_CATALOG
,       OP.OBJECT_SCHEMA
,       OP.OBJECT_NAME
,       OP.PRIVILEGE_TYPE
,       OP.GRANTEE
from    INFORMATION_SCHEMA.OBJECT_PRIVILEGES	OP
where	OP.OBJECT_CATALOG	like 'CITD_D3%'
and     OP.OBJECT_SCHEMA	like '%SLS'
and     OP.OBJECT_NAME  	like '%'
and     OP.GRANTEE			like 'CON%'
order   by
        OP.OBJECT_CATALOG
,       OP.OBJECT_SCHEMA
,       OP.OBJECT_NAME
,       OP.PRIVILEGE_TYPE
;
