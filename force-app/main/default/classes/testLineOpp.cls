public class testLineOpp {
    public List <OpportunityLineItem> opplist {get;set;}
public testLineOpp (ApexPages.StandardController c){
    opplist = [select Quantity,Vat__c,Product2Id,UnitPrice from OpportunityLineItem];
}
}