/*

		CITD_EDW_drop_table_or_view.sql

		created:	20230726	Andy Rupp
		updated:	20230821	Andy Rupp
		extended to also cover views
		
*/

select	'drop TABLE '
||		TABLE_CATALOG	|| '.'
||		TABLE_SCHEMA	|| '.'
||		TABLE_NAME
||		' ; '
--    select    *
from	INFORMATION_SCHEMA.TABLES
where	TABLE_CATALOG	like 'CITD_D1_DEV'
and		TABLE_SCHEMA	LIKE 'S3_REF%'
and     TABLE_NAME      like '%'
and		TABLE_TYPE		= 'BASE TABLE'
GROUP	BY
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
ORDER	BY
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME

;

select	'drop VIEW '
||		TABLE_CATALOG	|| '.'
||		TABLE_SCHEMA	|| '.'
||		TABLE_NAME
||		' ; '
--    select    *
from	INFORMATION_SCHEMA.TABLES
where	TABLE_CATALOG	like 'CITD_D1_DEV'
and		TABLE_SCHEMA	LIKE 'S3_REF%'
and     TABLE_NAME      like '%'
and		TABLE_TYPE		= 'VIEW'
GROUP	BY
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME
ORDER	BY
		TABLE_CATALOG
,		TABLE_SCHEMA
,		TABLE_NAME

;