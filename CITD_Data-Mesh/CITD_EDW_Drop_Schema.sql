/*

		CITD_EDW_Drop_Schema.sql
		
		created:	20240216	Andy Rupp
		updated:
		
		Prepare to clone Schema e.g. from DEV to TEST to PROD
		
*/

select	DISTINCT
		'drop schema '
	||	' CITD_D1_DEV.'		-- CITD_D1_DEV / CITD_D2_TEST / CITD_D3_PROD
	||	SCHEMA_NAME
	||	' ; '
,		SCHEMA_NAME
from	SNOWFLAKE.ACCOUNT_USAGE.SCHEMATA
WHERE	CATALOG_NAME	= 'CITD_D1_DEV'
and		SCHEMA_NAME		not like '%PUBLIC%'
ORDER	by
		SCHEMA_NAME
;