/*

		CITD_EDW_S2_GCC_360L_Clone_Schema.sql
		
		created:	20240216	Andy Rupp
		updated:
		
		Clone Schema e.g. from DEV to TEST to PROD
		and vice versa for UAT etc.
		
*/

SELECT	distinct
		'CREATE	or REPLACE '
	||	' SCHEMA '
	||	' CITD_D1_DEV' || '.'	-- CITD_D1_DEV / CITD_D2_TEST / CITD_D3_PROD
	||	SCHEMA_NAME
	||	' CLONE '
	||	CATALOG_NAME || '.'
	||	SCHEMA_NAME
	||	' ; '
,		SCHEMA_NAME
from	SNOWFLAKE.ACCOUNT_USAGE.SCHEMATA
WHERE	CATALOG_NAME	= 'CITD_D3_PROD'
and		SCHEMA_NAME		not like '%PUBLIC%'
ORDER	by
		SCHEMA_NAME
;