/*

	CITD_EDW_Duplicate_Objects.sql
	
	created:	20230818	Andy Rupp
	updated:

	include Data Mesh replication / naming standards
	don't forget to change schema + prefix name parts
	
	from	CITD_D3_PROD.S2_<Name>
	to 		CITD_D1_DEV.S2_<Name>
	
*/

select	'CREATE or REPLACE TABLE  S2_DQ.'		
	||	TABLE_NAME
	||	' as select * from '
	||	TABLE_CATALOG	|| '.'
	||	TABLE_SCHEMA	|| '.'
	||	TABLE_NAME
	||	' ;'
from    INFORMATION_SCHEMA.TABLES
where	TABLE_CATALOG	= 'CITD_D3_PROD'
and		TABLE_SCHEMA	= 'S2_DQ'
and		TABLE_TYPE		= 'BASE TABLE'
ORDER	by
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
;
select	'CREATE or REPLACE VIEW  S2_REF.'		
	||	TABLE_NAME
	||	' as select * from '
	||	TABLE_CATALOG	|| '.'
	||	TABLE_SCHEMA	|| '.'
	||	TABLE_NAME
	||	' ;'
from    INFORMATION_SCHEMA.VIEWS
where	TABLE_CATALOG	= 'CITD_D3_PROD'
and		TABLE_SCHEMA	= 'S2_DQ'
and		TABLE_TYPE		= 'VIEW'
ORDER	by
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
;