/*

		CITD_EDW_ROLES_overview.sql
		
		created:	2023-07-27	Andy Rupp
		updated:

*/

select	*
from	SNOWFLAKE.ACCOUNT_USAGE.GRANTS_TO_ROLES

select	*
from	SNOWFLAKE.ACCOUNT_USAGE.GRANTS_TO_USERS

select	NAME
,		to_char(CREATED_ON,'YYYY-MM-DD')	CRE_DT
,		OWNER
,		ROLE_TYPE
,		ROLE_DATABASE_NAME
from	SNOWFLAKE.ACCOUNT_USAGE.ROLES
where	DELETED_ON		is NULL
order	by
		NAME