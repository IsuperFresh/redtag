public class testCompanyUpdateLead implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext BC){
       
        return Database.getQueryLocator('SELECT Id FROM Lead ');
    }

    public void execute(Database.BatchableContext BC, List<Lead> scope){
     List <Lead> leads = new List<Lead>();
     for (Lead lead : scope) {
         lead.Company = 'DYNA-VESTA';
         leads.add(lead);
              }
              update leads;
    }
    public void finish(Database.BatchableContext BC){



    }
}