/*

		CITD_EDW_S1_LND_Clone_Schema.sql
		
		created:	20240216	Andy Rupp
		updated:
		
		Close Schema e.g. from DEV to TEST to PROD
		and vice versa for UAT etc.
		
*/

CREATE	or REPLACE
		SCHEMA	CITD_D1_DEV.S1_LND
		CLONE	CITD_D3_PROD.S1_LND
;