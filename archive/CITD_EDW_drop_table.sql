/*

		CITD_EDW_drop_table.sql

		created:	20230726	Andy Rupp
		updated:	
		
*/

select	'drop table '
||		TABLE_NAME
||		' ; '
--    select    *
from	CITD_D1_DEV.INFORMATION_SCHEMA.TABLES
where	TABLE_CATALOG	= 'CITD_D1_DEV'
and		TABLE_SCHEMA	= 'S2_INT'
and		TABLE_TYPE		= 'BASE TABLE'
and		TABLE_NAME		like 'LGL%'

data owner
owner specific credentials
