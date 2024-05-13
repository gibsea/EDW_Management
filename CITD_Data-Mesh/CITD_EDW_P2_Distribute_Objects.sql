/*

	CITD_EDW_P2_Distribute_Objects.sql
	
	created:	20230818	Andy Rupp
	updated:	20231204	Andy Rupp

	include Data Mesh replication / naming standards
	in S2_BU = BU_MD	Master Data Set
	in S3_BU = BU_RD	Replication Data Set
	in S4_BU = BU_SD	Shared Data Set
	
*/

select	'CREATE or REPLACE table HR_RD_'		
	||	TABLE_NAME
	||	' as select * from '
	||	TABLE_CATALOG	|| '.'
	||	TABLE_SCHEMA	|| '.'
	||	TABLE_NAME
	||	' ;'
from SNOWFLAKE.ACCOUNT_USAGE.TABLES
where	TABLE_CATALOG	= 'CITD_D3_PROD'
and		TABLE_SCHEMA	= 'S2_HR'
and		TABLE_TYPE		= 'BASE TABLE'
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
GROUP	by
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
ORDER	by
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
;

select	'CREATE or REPLACE table    '
	||	TABLE_NAME
	||	' as select * from '
	||	TABLE_CATALOG	|| '.'
	||	TABLE_SCHEMA	|| '.'
	||	TABLE_NAME
	||	' ;'
from SNOWFLAKE.ACCOUNT_USAGE.TABLES
where	TABLE_CATALOG	= 'CITD_D1_DEV'
and		TABLE_SCHEMA	= 'S2_INT'
and		TABLE_TYPE		= 'BASE TABLE'
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
GROUP	by
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
ORDER	by
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
;