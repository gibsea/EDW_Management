/*

		CITD_EDW_Grants_to_Roles.sql
		
		created:	20240216	Andy Rupp
		updated:
		
		Copy Grants between (cloned) Schema e.g. from DEV to TEST to PROD
		
*/
SELECT	DISTINCT
		'grant '
	||	PRIVILEGE
	||	' on '
	||	GRANTED_ON
	||	' '
	||	'CITD_D1_DEV.'		-- CITD_D1_DEV / CITD_D2_TEST / CITD_D3_PROD
	||	TABLE_SCHEMA
	||	' to '
	||	GRANTED_TO
	||	' ' 
	||	GRANTEE_NAME
	||	' ; '
,		TABLE_SCHEMA
,		GRANTEE_NAME
from	SNOWFLAKE.ACCOUNT_USAGE.GRANTS_TO_ROLES
WHERE	TABLE_CATALOG		= 'CITD_D3_PROD'
and		GRANTED_TO			= 'ROLE'
and		(
		TABLE_SCHEMA		not like '%PUBLIC%'
		and TABLE_SCHEMA	like 'S1_LND'
		)
and		(
		GRANTED_ON			not in ('TABLE','VIEW')
		)
ORDER	by
		TABLE_SCHEMA
,		GRANTEE_NAME
;