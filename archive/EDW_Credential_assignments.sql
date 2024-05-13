/*

		EDW_Credential_assignments.sql
		
		created:	2023-05-23	Andy Rupp
		updated:

*/

select  ROLE_NAME
,       GRANTEE
,       ROLE_OWNER
from    INFORMATION_SCHEMA.APPLICABLE_ROLES
where	ROLE_NAME like '%DEP%'
order   by
        ROLE_NAME
,       GRANTEE