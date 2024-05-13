/*

	CITD_EDW_transfer_ownership_on_table_view.sql
	
	created:	20230818	Andy Rupp
	
	owner (typically) is one of the ADM_XXX roles
	
	updated:
	
*/

-- use	role		ACCOUNTADMIN
-- use	database	CITD_D1_DEV
-- use	schema		S2_MDM

SET	p_role	= 'ADM_DQ';						-- variable not always work in Snowflake ...

select	'GRANT OWNERSHIP ON '
	||	TABLE_CATALOG	|| '.'
	||	TABLE_SCHEMA	|| '.'
	||	TABLE_NAME
	||	' to ROLE '
	||	' ADM_DQ '							-- set according to SCHEMA
--	||	' REVOKE CURRENT GRANTS '			-- not always needed. Activate IF
	||	' ;'
from	SNOWFLAKE.ACCOUNT_USAGE.TABLES
where	TABLE_CATALOG	= 'CITD_D1_DEV'
and		TABLE_SCHEMA	like 'S2_DQ'		-- adjust ROLE <> SCHEMA
and		TABLE_TYPE		like '%'
/*
and		(
		TABLE_NAME		not like 'CEE_ACC_%'
	and	TABLE_NAME		not like 'CEE_DM_%'
	and	TABLE_NAME		not like 'CEE_ETL%'
	and	TABLE_NAME		not like 'CEE_FORM%'
	and	TABLE_NAME		not like 'CEE_KEY%'
	and	TABLE_NAME		not like 'CEE_MENU%'
	and	TABLE_NAME		not like 'CEE_ROLE%'
	and	TABLE_NAME		not like 'CEE_USER%'
		)
*/
ORDER	by
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
;
