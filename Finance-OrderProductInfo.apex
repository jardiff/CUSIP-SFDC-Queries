\\Reporting soql that is used to get the fields required for financial reporting in datalake. 
select 
Order.Account.FactSet_Firm_Type__c,
Order.Account.Region__c, 
Order.Account.Name,
Order.Currency__c,
Product_Code__c,
ServiceDate, 
EndDate, 
TotalPrice, 
Order.Owner.Name, 
SBQQ__ChargeType__c,
SBQQ__BillingFrequency__c,
id, 
Product2Id,
Order.AccountId,
Order.OwnerId,
Order.Type,
Product2.Family,
Product2.Product_Family_Type__c,
Product2.Product_Type__c,
SBQQ__QuoteLine__c, 
SBQQ__QuoteLine__r.Yearly_Customer_Total__c, 
SBQQ__QuoteLine__r.SBQQ__ProrateMultiplier__c,
ASV_Reporting_Date__c
from OrderItem
where ASV_Reporting_Date__c = LAST_MONTH
