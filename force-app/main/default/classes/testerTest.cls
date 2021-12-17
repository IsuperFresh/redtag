public with sharing class testerTest implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext BC){
       
        return Database.getQueryLocator('SELECT Id,Rating FROM Lead ');
    }

    public void execute(Database.BatchableContext BC, List<Lead> scope){
     List <Lead> leads = new List<Lead>();
     for (Lead lead : scope) {
         lead.Rating = 'Cold';
         leads.add(lead);
              }
              update leads;
    }
    public void finish(Database.BatchableContext BC){



    }
}