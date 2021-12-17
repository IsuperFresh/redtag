public class EXtControler {
    public List <OpportunityLineItem> opplist {get;set;}
 public EXtControler(ApexPages.StandardController stdController){
     opplist = [select	Quantity from OpportunityLineItem];
         
     }
}