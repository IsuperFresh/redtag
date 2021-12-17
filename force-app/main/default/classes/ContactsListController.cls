public class ContactsListController {

    public List <OpportunityLineItem> getOpportunityLineItem(){
        List <OpportunityLineItem> results= Database.query('SELECT Id, Quantity,TotalPrice,Name,Product2Id'+ 'FROM OpportunityLineItem ');
    
    return results;
}
}