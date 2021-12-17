public with sharing class TestInsertLeads implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext BC){
       
        return Database.getQueryLocator('SELECT Id,LastName,Company,Lead_Name__c FROM Lead ');
    }

    public void execute(Database.BatchableContext BC, List<Lead> scope){
        Lead[] a = New Lead[]{};
        
            For (Integer x=0;x<50;x++)
            a.add(New Lead(LastName='Account Name'+x,Company= 'test'+x,Lead_Name__c='enemy'));
            
            insert a;
    }
    public void finish(Database.BatchableContext BC){



    }
}