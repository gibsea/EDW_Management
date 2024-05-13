/*

	CITD_EDW_P2_Data_Mesh_Objects.sql
	
	created:	20230818	Andy Rupp
	updated:	20231208	Andy Rupp

	include Data Mesh replication / naming standards
	don't forget to change schema + prefix name parts
	
	from	S1_LND = original object name
	to 		S2_BU = BU_MD_<Name>	Master Data Set 		(as a view OR table)
	to 		S3_BU = BU_RD_<Name>	Replication Data Set	(as a view)
	to 		S4_BU = BU_SD_<Name>	Shared Data Set			(as a view)
	
*/

--	S2_BU to S3_BU = BU_MD / BU_RD	Master Data Object / Reference Data Object

select	'CREATE or REPLACE view  S3_HR.HR_RD_'		
	||	TABLE_NAME
	||	' as select * from '
	||	TABLE_CATALOG	|| '.'
	||	TABLE_SCHEMA	|| '.'
	||	TABLE_NAME
	||	' ;'
from    INFORMATION_SCHEMA.TABLES
where	TABLE_CATALOG	= 'CITD_D3_PROD'
and		TABLE_SCHEMA	= 'S2_HR'
and		TABLE_NAME		like 'HR_MD%'
-- and		TABLE_TYPE		= 'BASE TABLE'
GROUP	by
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
ORDER	by
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
;

--	S3_BU to S4_BU = BU_RD / BU_SD	Reference Data Object / Shared Data Object

select	'CREATE or REPLACE view S4_HR.HR_SD_'			-- final name to be edited !!! HR_SD_HR_RD => HR_SD
	||	TABLE_NAME
	||	' as select * from '
	||	TABLE_CATALOG	|| '.'
	||	TABLE_SCHEMA	|| '.'
	||	TABLE_NAME
	||	' ;'
from    INFORMATION_SCHEMA.TABLES
where	TABLE_CATALOG	= 'CITD_D3_PROD'
and		TABLE_SCHEMA	= 'S3_HR'
and		TABLE_NAME		like 'HR_RD%'
-- and		TABLE_TYPE		= 'BASE TABLE'
GROUP	by
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
ORDER	by
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
;
