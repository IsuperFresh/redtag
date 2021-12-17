public with sharing class deleteColdLeads implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext BC){
       
        return Database.getQueryLocator('SELECT Id,Rating FROM Lead WHERE Rating=\'cold\'');
    }

    public void execute(Database.BatchableContext BC, List<sObject> scope){
        delete scope;
    }
    public void finish(Database.BatchableContext BC){


        AsyncApexJob a = [Select Id, Status,ExtendedStatus,NumberOfErrors, JobItemsProcessed,TotalJobItems, CreatedBy.Email    from AsyncApexJob where Id =:BC.getJobId()];
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
           String[] toAddresses = new String[] {a.CreatedBy.Email};
        mail.setToAddresses(toAddresses);
        mail.setSubject('Match Merge Batch ' + a.Status);
        mail.setPlainTextBody('records processed ' + a.TotalJobItems +   'with '+ a.NumberOfErrors + ' failures.');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}