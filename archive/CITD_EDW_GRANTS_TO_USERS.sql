/*

	CITD_EDW_GRANTS_TO_USERS.sql
	
	created:	20231211	Andy Rupp
	updated:
	
*/

select	GRANTEE_NAME
,		ROLE
,       GRANTED_BY
,		GRANTED_TO
,		CREATED_ON
,		DELETED_ON
-- select *
from	SNOWFLAKE.ACCOUNT_USAGE.GRANTS_TO_USERS
where	GRANTEE_NAME	like '%REN'
order	by
		GRANTEE_NAME
,		CREATED_ON      desc
,		ROLE
,       GRANTED_BY
,		GRANTED_TO
;