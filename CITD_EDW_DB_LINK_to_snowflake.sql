/*
	CITD_EDW_DB_LINK_to_snowflake.sql
	
	created:	2023-08-22	Andy Rupp
	updated:
	
*/

USE [master]

EXEC master.dbo.sp_addlinkedserver @server = N'SNOWFLAKE', @srvproduct=N'MDM_Snowflake', @provider=N'MSDASQL', @datasrc=N'MDM'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SNOWFLAKE',@useself=N'False',@locallogin=NULL,@rmtuser=N'arupp@kinaxis.com',@rmtpassword='########'

EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'use remote collation', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SNOWFLAKE', @optname=N'remote proc transaction promotion', @optvalue=N'true'

