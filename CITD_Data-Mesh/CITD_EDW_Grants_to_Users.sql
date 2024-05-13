/*

		CITD_EDW_Grants_to_Users.sql
		
		created:	20240216	Andy Rupp
		updated:
		
		Copy Grants between (cloned) Users e.g. from DEV to TEST to PROD
		
*/

SELECT	DISTINCT
		'grant '
	||	' ROLE '
	||	ROLE
	||	' to '
	||	GRANTEE_NAME
	||	' ; '
,		ROLE
,		GRANTEE_NAME
from	SNOWFLAKE.ACCOUNT_USAGE.GRANTS_TO_USERS
WHERE	ROLE			like 'ADM%'
AND		GRANTEE_NAME	like '%'
ORDER	by
		ROLE
,		GRANTEE_NAME
;