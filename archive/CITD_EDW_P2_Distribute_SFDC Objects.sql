/*

	CITD_EDW_P2_Distribute_SFDC Objects.sql
	
	created:	20230925	Andy Rupp
	updated:
	
*/

CREATE or REPLACE table    SFDC_ACCOUNT as select * from CORPITDATADEV.EDW_LND_TB.SFDC_ACCOUNT ;
CREATE or REPLACE table    SFDC_ACCOUNT_PARTNER_SUBTYPE as select * from CORPITDATADEV.EDW_LND_TB.SFDC_ACCOUNT_PARTNER_SUBTYPE ;
CREATE or REPLACE table    SFDC_ACCOUNT_SUMMARY as select * from CORPITDATADEV.EDW_LND_TB.SFDC_ACCOUNT_SUMMARY ;
-- CREATE or REPLACE table    SFDC_CURR_CONVERSION as select * from CORPITDATADEV.EDW_LND_TB.SFDC_CURR_CONVERSION ;
CREATE or REPLACE table    SFDC_DATED_CONVERSIONRATE as select * from CORPITDATADEV.EDW_LND_TB.SFDC_DATED_CONVERSIONRATE ;
-- CREATE or REPLACE table    SFDC_DATED_CONVERSION_RATE as select * from CORPITDATADEV.EDW_LND_TB.SFDC_DATED_CONVERSION_RATE ;
CREATE or REPLACE table    SFDC_DNB_OPTIMIZER as select * from CORPITDATADEV.EDW_LND_TB.SFDC_DNB_OPTIMIZER ;
CREATE or REPLACE table    SFDC_GAINSIGHT_STATUS as select * from CORPITDATADEV.EDW_LND_TB.SFDC_GAINSIGHT_STATUS ;
CREATE or REPLACE table    SFDC_KSDWCLS_AUDIENCE as select * from CORPITDATADEV.EDW_LND_TB.SFDC_KSDWCLS_AUDIENCE ;
CREATE or REPLACE table    SFDC_OPPORTUNITY as select * from CORPITDATADEV.EDW_LND_TB.SFDC_OPPORTUNITY ;
-- CREATE or REPLACE table    SFDC_OPPORTUNITY_CREATED_BY_IICS as select * from CORPITDATADEV.EDW_LND_TB.SFDC_OPPORTUNITY_CREATED_BY_IICS ;
CREATE or REPLACE table    SFDC_OPPRTNTY_FIELD_HIST as select * from CORPITDATADEV.EDW_LND_TB.SFDC_OPPRTNTY_FIELD_HIST ;
-- CREATE or REPLACE table    SFDC_OPP_FIELD_HISTORY as select * from CORPITDATADEV.EDW_LND_TB.SFDC_OPP_FIELD_HISTORY ;
CREATE or REPLACE table    SFDC_PRODUCT as select * from CORPITDATADEV.EDW_LND_TB.SFDC_PRODUCT ;
CREATE or REPLACE table    SFDC_PROFILE as select * from CORPITDATADEV.EDW_LND_TB.SFDC_PROFILE ;
-- CREATE or REPLACE table    SFDC_QUOTE_AGRMNT_PRICERULE as select * from CORPITDATADEV.EDW_LND_TB.SFDC_QUOTE_AGRMNT_PRICERULE ;
-- CREATE or REPLACE table    SFDC_QUOTE_LINEITEM as select * from CORPITDATADEV.EDW_LND_TB.SFDC_QUOTE_LINEITEM ;
-- CREATE or REPLACE table    SFDC_QUOTE_PRICE_RULES as select * from CORPITDATADEV.EDW_LND_TB.SFDC_QUOTE_PRICE_RULES ;
CREATE or REPLACE table    SFDC_QUOTE_PROPOSAL as select * from CORPITDATADEV.EDW_LND_TB.SFDC_QUOTE_PROPOSAL ;
CREATE or REPLACE table    SFDC_QUOTE_PROP_LINEITEM as select * from CORPITDATADEV.EDW_LND_TB.SFDC_QUOTE_PROP_LINEITEM ;
CREATE or REPLACE table    SFDC_USER as select * from CORPITDATADEV.EDW_LND_TB.SFDC_USER ;
CREATE or REPLACE table    SFDC_USER_ROLE as select * from CORPITDATADEV.EDW_LND_TB.SFDC_USER_ROLE ;