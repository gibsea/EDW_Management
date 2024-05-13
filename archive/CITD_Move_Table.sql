/*

	CITD_Move_Table.sql
	
	created:	20230818	Andy Rupp
	updated:
	
*/

use	role		ACCOUNTADMIN
use	database	CITD_D1_DEV
use	schema		S2_MDM

select	'create table    '
	||	TABLE_NAME
	||	' as select * from CITD_D1_DEV.S2_INT.'
	||	TABLE_NAME
	||	' ;'
from SNOWFLAKE.ACCOUNT_USAGE.TABLES
where	TABLE_CATALOG	= 'CITD_D1_DEV'
and		TABLE_SCHEMA	= 'S2_INT'
and		TABLE_SCHEMA	= 'S2_INT'
and		TABLE_TYPE		= 'BASE TABLE'
and		(
		TABLE_NAME		like 'CEE_ACC_%'
	or	TABLE_NAME		like 'CEE_DM_%'
	or	TABLE_NAME		like 'CEE_ETL%'
	or	TABLE_NAME		like 'CEE_FORM%'
	or	TABLE_NAME		like 'CEE_KEY%'
	or	TABLE_NAME		like 'CEE_MENU%'
	or	TABLE_NAME		like 'CEE_ROLE%'
	or	TABLE_NAME		like 'CEE_USER%'
		)
GROUP	by
		TABLE_NAME
ORDER	by
		TABLE_NAME
		