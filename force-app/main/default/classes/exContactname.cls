public class exContactname {
    public List <Contact> con {get;set;}
public exContactname (ApexPages.StandardController contacter){
    con = [select AccountId,Data_Quality_Score__c from Contact];
}
}